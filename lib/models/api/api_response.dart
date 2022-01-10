import 'package:pyli_business_mobile/models/api/__api.dart';
import 'error_type_enum.dart';

abstract class ApiResponse {}

class Success extends ApiResponse {
  final Map<String, dynamic> data;

  Success(this.data);
}

class Failure extends ApiResponse {
  final ApiErrorResponse error;

  Failure(this.error);

  factory Failure.fromMap(Map<String, dynamic> json) {
    return Failure(
      ApiErrorResponse(
        message: json,
        type: ErrorType.unknown,
      ),
    );
  }

  static String getErrorMessage(Object message) {
    if (message is List && message.isNotEmpty) {
      return message.first;
    }
    if (message is String) return message;
    return "Unknown error";
  }
}
