import 'dart:convert';
import 'dart:developer';
import 'package:pyli_business_mobile/data/services/local/__local.dart';
import 'package:pyli_business_mobile/models/api/__api.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/app_strings.dart';
import 'package:pyli_business_mobile/utils/connection_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class BaseApi {
  late Dio dio;

  BaseApi(String baseApi) {
    print("================ https://$baseApi");

    final options = BaseOptions(
      baseUrl: "https://" + baseApi.toString(),
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000, // 60 seconds
    );

    dio = Dio(options);

    dio.interceptors.add(
      InterceptorsWrapper(onRequest: (
        options,
        handler,
      ) async {
        //no internet? reject request
        if (!await ConnectionStatus.isConnected()) {
          handler.reject(
            DioError(
              requestOptions: options,
              error:
                  "Oops! Looks like you're not connected to the internet. Check your internet connection and try again.",
            ),
          );
        }

        handler.next(options);
      }, onResponse: (response, handler) async {
        print("THIS IS THE STATUS CODE == " + response.statusCode.toString());

        handler.next(response);
      }, onError: (error, handler) async {
        print("THIS IS THE STATUS CODE == " +
            error.response!.statusCode.toString());

        handler.next(error);
      }),
    );
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );
    }
  }

  Future<Map<String, dynamic>> getAuthorizedHeader() async {
    final token = await locator<LocalCache>().getToken();
    return {
      "Authorization": "Bearer " + token,
    };
  }

  Future<Either<Failure, Success>> get(
    path, {
    bool useToken = false,
    Map<String, dynamic>? data,
    Map<String, dynamic> headers = const {},
  }) async {
    var authorizedHeader = {};
    if (useToken) {
      authorizedHeader = await getAuthorizedHeader();
    }
    return makeRequest(
      dio.request(
        "/$path",
        data: data,
        options: Options(
          method: "GET",
          headers: {
            ...headers,
            ...authorizedHeader,
          },
        ),
      ),
    );
  }

  Future<Either<Failure, Success>> post(
    path, {
    bool useToken = false,
    dynamic data,
    Map<String, dynamic> headers = const {},
  }) async {
    var authorizedHeader = {};
    if (useToken) {
      authorizedHeader = await getAuthorizedHeader();
    }

    return makeRequest(dio.post(
      "/$path",
      data: data,
      options: Options(
        headers: {
          ...headers,
          ...authorizedHeader,
        },
      ),
    ));
  }

  Future<Either<Failure, Success>> patch(
    path, {
    Map<String, dynamic>? data,
    Map<String, dynamic> headers = const {},
  }) {
    return makeRequest(dio.patch(
      "/$path",
      data: data,
      options: Options(
        headers: {
          ...headers,
        },
      ),
    ));
  }

  Future<Either<Failure, Success>> put(
    path, {
    Map<String, dynamic>? data,
    Map<String, dynamic> headers = const {},
  }) =>
      makeRequest(
        dio.put(
          "/$path",
          data: data,
          options: Options(
            headers: {
              ...headers,
            },
          ),
        ),
      );

  Future<Either<Failure, Success>> delete(
    path, {
    bool useToken = false,
    Map<String, dynamic>? data,
    Map<String, dynamic> headers = const {},
  }) async {
    var authorizedHeader = {};
    if (useToken) {
      authorizedHeader = await getAuthorizedHeader();
    }
    return makeRequest(
      dio.delete(
        "/$path",
        data: data,
        options: Options(
          headers: {
            ...headers,
            ...authorizedHeader,
          },
        ),
      ),
    );
  }

  Future<Either<Failure, Success>> makeRequest(Future<Response> future) async {
    try {
      var req = await future;

      var data = req.data;

      AppLogger.log(data);

      AppLogger.log(
          'this is the status code for every request made=> ${req.statusCode}');

      //check for status code that indicates expired session and log user out
      log('Status Code: ${req.statusCode.toString()}');
      if ("${req.statusCode}".startsWith('2')) {
        //CHECK THAT STATUS IS NOT FALSE
        if (data["status"].toString() != "false") {
          return Right(Success(data));
        } else {
          var mess = data["message"];
          return Left(
            Failure(
              ApiErrorResponse(
                message: {
                  "error":
                  "Oops. It took too long to send your request. Check your internet connection and try again."
                },
              ),
            ),
          );
        }
      }

      return Left(Failure(data["message"]));
    } on DioError catch (e) {
      if (e.type == DioErrorType.connectTimeout) {
        return Left(
          Failure(
            const ApiErrorResponse(
              message: {
                "error":
                    "Oops. It took too long to send your request. Check your internet connection and try again."
              },
            ),
          ),
        );
      }

      print("hey -- tttr" + e.response!.data.toString());
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        if (e.response?.data != null && e.response!.data is Map) {
          print("GOTTEN HERE --" + e.response!.data.toString());
          return Left(Failure.fromMap(e.response!.data));
        }
        // return Left(Failure(e.response?.data));
        return Left(
          Failure.fromMap(e.response!.data),
        );
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        return Left(Failure.fromMap(e.response!.data));
      }
    }
  }

  /// return true if it is successfully regenerate the access token
  Future<bool> _regenerateAccessToken(String baseApi) async {
    try {
      var dio =
          Dio(); // should create new dio instance because the request interceptor is being locked

      // get refresh token from local storage
      var refresh_token = locator<LocalCache>()
          .getFromLocalCache(AppStrings.refresh_token_pref);

      // make request to server to get the new access token from server using refresh token
      final response = await dio.post(
        "https://$baseApi" + "auth/renew_access_token",
        options: Options(headers: {"Authorization": "Bearer $refresh_token"}),
      );

      print(response.statusCode.toString() + response.toString());

      if (response.statusCode == 200 || response.statusCode == 201) {
        final newAccessToken = response.data["data"]["access_token"];

        // save to local storage
        await locator<LocalCache>().saveToken(newAccessToken);

        await locator<LocalCache>().saveToLocalCache(
            key: AppStrings.access_token_pref, value: newAccessToken);

        print("LAUCH REFRESH COMPLETED");

        return true;
      } else if (response.statusCode == 401 || response.statusCode == 403) {
        // it means your refresh token no longer valid now, it may be revoked by the backend
        // _performLogout(_dio);
        return false;
      } else {
        print(response.statusCode);
        return false;
      }
    } catch (e) {
      print("}}}----" + e.toString() + "-----====");
      return false;
    }
  }
}
