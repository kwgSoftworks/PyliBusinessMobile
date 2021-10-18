import 'dart:async';

import 'package:pyli_business_mobile/utils/enums.dart';
import 'package:pyli_business_mobile/models/dialog/dialog_request.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

abstract class DialogHandler {

  ///Sets the visibility of a dialog
  void setIsDialogVisible(bool isDialogVisible);

  ///Dismisses a dialog or loader
  void dismissDialog();

  ///Stops a loader
  void stopLoader();

  /// Registers a callback function to show a dialog
  void registerShowDialogListener(Function(DialogRequest) showDialogListener);

  ///Registers a callback to dismiss a dialog
  void registerDismissDialogListener(Function dismissCurrentDialog);

  ///Registers a callback to show top toast dialog
  void registerTopToastDialogListener(Function(String message, TopDialogType topDialogType) showTopToastDialog);

  ///Display top toast dialog on the screen
  void showTopToastDialog(String message, TopDialogType topDialogType);

  ///Regsiters a callback to complete the completer
  void dialogComplete(bool response);

  ///Displays a dialog on the screen
  Future<bool> showDialog({
    DialogContentType contentType = DialogContentType.basic,
    String message = '',
    String title = '',
    bool autoDismiss = false,
    bool dismissable = true,
    Duration duration = const Duration(seconds: 3),
    String? warningMessage,
    String? primaryText,
    String? secondaryText,
    bool outlineButtons = false,
  });

  ///Displays a loader
  Future<bool> showLoader();
}

class DialogHandlerImpl implements DialogHandler {

  late Function(DialogRequest) _showDialogListener;
  late Function(String message, TopDialogType topDialogType) _showTopToastDialog;
  late Completer<bool> _dialogCompleter;
  late Function _dismissCurrentDialog;

  Completer<bool> get dialogCompleter => _dialogCompleter;

  bool _isDialogVisible = false;

  /// Boolean reference which can be used to look up whether a dialog is on screen or not.
  bool get isDialogVisible => _isDialogVisible;

  void setIsDialogVisible(bool isDialogVisible) {
    _isDialogVisible = isDialogVisible;
  }

  void registerShowDialogListener(Function(DialogRequest) showDialogListener) {
    _showDialogListener = showDialogListener;
  }

  /// Registers a callback function to dismiss the dialog
  void registerDismissDialogListener(Function dismissCurrentDialog) {
    _dismissCurrentDialog = dismissCurrentDialog;
  }

  /// Dismisses the dialog
  void dismissDialog() {
    _dismissCurrentDialog();
  }

  ///Dismisses any visible dialog
  void _closeVisibleDialog() {
    if (isDialogVisible) {
      dismissDialog();
    }
  }

  /// Calls the dialog listener and returns a Future that will wait for dialogComplete.
  ///
  /// If primaryText and seondaryText are both non null,
  /// `true` is returned when the button containing the primaryText is tapped.
  /// `false` is returned when the button containing the secondaryText is tapped.
  Future<bool> showDialog({
    DialogContentType contentType = DialogContentType.basic,
    String message = '',
    String title = '',
    bool dismissable = true,
    bool autoDismiss = false,
    Duration duration = const Duration(seconds: 3),
    String? primaryText,
    String? warningMessage,
    String? secondaryText,
    bool outlineButtons = false,
  }) {
    _dialogCompleter = Completer<bool>();
    _closeVisibleDialog();
    _showDialogListener(
      DialogRequest(
        title: title,
        message: message,
        dialogContentType: contentType,
        duration: duration,
        autoDismiss: autoDismiss,
        dismissable: dismissable,
      ),
    );

    _isDialogVisible = true;
    return _dialogCompleter.future;
  }

  /// Completes the _dialogCompleter to resume the Future's execution call
  void dialogComplete(bool response) {
    _isDialogVisible = false;
    _dialogCompleter.complete(response);
    _dialogCompleter = Completer<bool>();
  }

  @override
  Future<bool> showLoader() async {
    return await showDialog(contentType: DialogContentType.loading);
  }

  @override
  void stopLoader() {
    dismissDialog();
  }

  @override
  void registerTopToastDialogListener(Function(String message, TopDialogType topDialogType) showTopToastDialog) {
    this._showTopToastDialog = showTopToastDialog;
  }

  @override
  void showTopToastDialog(String message, TopDialogType topDialogType) {
    _showTopToastDialog(message, topDialogType);
  }

}
