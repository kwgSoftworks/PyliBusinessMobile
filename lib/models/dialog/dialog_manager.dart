import 'package:flutter/material.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/models/dialog/dialog_request.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class DialogManager extends StatefulWidget {
  final Widget child;

  const DialogManager({Key? key, required this.child}) : super(key: key);

  @override
  _DialogManagerState createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  OverlayEntry? _overlayEntry;
  late DialogHandler _dialogHandler;

  @override
  void initState() {
    super.initState();
    _dialogHandler = locator<DialogHandler>();
    _dialogHandler.registerDismissDialogListener(_dismissDialog);
    _dialogHandler.registerTopToastDialogListener(showTopToastDialog);
  }


  void showTopToastDialog(String message, TopDialogType topDialogType) {

    if(topDialogType == TopDialogType.success){

      showTopSnackBar(
        context,
        CustomSnackBar.success(message: message),
      );
    }else{
      showTopSnackBar(
        context,
        CustomSnackBar.error(message: message),
      );
    }

  }

  void _dismissDialog([bool status = false]) {
    if (_overlayEntry != null) {
      _dialogHandler.dialogComplete(status);
      _overlayEntry!.remove();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
