import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:pyli_business_mobile/data/config/base_api.dart';
import 'package:pyli_business_mobile/data/services/local/__local.dart';
import 'package:pyli_business_mobile/data/services/remote/repositories/user_repositories.dart';
import 'package:pyli_business_mobile/models/api/__api.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class UserRepositoriesImpl extends BaseApi implements UserRepository {
  late LocalCache cache;

  UserRepositoriesImpl(
    String baseApi, {
    required this.cache,
  }) : super(baseApi);

  @override
  Future<GeneralResponse> signIn(String username, String password) async {
    var requestData = {"username": username, "password": password};

    var res = await post(ApiEndpoints.login, data: requestData);

    return GeneralResponse.fromJson(res);
  }

  @override
  Future<GeneralResponse> signUp(
    String companyName,
    String firstName,
    String lastName,
    String email,
    String password,
    String companyPhone,
    String providerName,
    String companyAddress,
    String companyWebsite,
    String bankName,
    String bankAccountNumber,
    String logo,
    String licNumber,
  ) async {

    var requestData = {
      "companyName": companyName,
      "firstname": firstName,
      "lastname": lastName,
      "email": email,
      "password": password,
      "companyPhone": companyPhone,
      "providerName": providerName,
      "companyAddress": companyAddress,
      "companyWebsite": companyWebsite,
      "bankName": bankName,
      "bankAccountNumber": bankAccountNumber,
      "logo": logo,
      "licNumber": licNumber
    };

    var res = await post(ApiEndpoints.signUp, data: requestData);

    return GeneralResponse.fromJson(res);
  }
}
