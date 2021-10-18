import 'package:equatable/equatable.dart';

class DialogRequest extends Equatable {
  final DialogContentType dialogContentType;
  final String title;
  final String message;
  final bool autoDismiss;
  final bool dismissable;
  final Duration duration;

  DialogRequest({
    this.dialogContentType = DialogContentType.basic,
    required this.title,
    required this.message,
    this.dismissable = true,
    this.autoDismiss = false,
    this.duration = const Duration(seconds: 3),
  });

  @override
  List<Object?> get props => [
        dialogContentType,
        title,
        message,
        dismissable,
        autoDismiss,
        duration,
      ];
}

enum DialogContentType { basic, loading }
