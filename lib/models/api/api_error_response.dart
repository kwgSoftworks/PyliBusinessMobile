import 'package:equatable/equatable.dart';
import 'error_type_enum.dart';

class ApiErrorResponse extends Equatable {
  final ErrorType type;
  final String message;

  const ApiErrorResponse({
    this.type = ErrorType.unknown,
    required this.message,
  });

  @override
  List<Object?> get props => [type, message];
}
