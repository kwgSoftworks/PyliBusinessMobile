import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? controller;
  FocusNode? focusNode;
  final String? hint;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Function(String)? validator;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final Color? fillColor;
  final Color? hintColor;
  final double? hintColorOpacity;
  final TextCapitalization textCapitalization;
  bool obscureText;
  final EdgeInsetsGeometry contentPadding;
  final bool activateFocus;
  final double borderRadius;
  final bool readOnly;
  final Function()? onTap;
  double borderWidth;
  final Color borderColor;
  final Function(String)? onChanged;
  final int? maxLength;
  final int? minLength;
  final int? maxLines;
  final int? minLines;
  bool isObscure = false;

  CustomTextField({
    Key? key,
    this.controller,
    this.focusNode,
    this.hint,
    this.suffix,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
    this.fillColor,
    this.hintColor = CustomColors.appBlackColor1,
    this.hintColorOpacity = 0.2,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization = TextCapitalization.none,
    this.contentPadding = const EdgeInsets.symmetric(
      vertical: 21.0,
      horizontal: 20.0,
    ),
    this.activateFocus = true,
    this.borderRadius = 30.0,
    this.readOnly = false,
    this.onTap,
    this.borderWidth = 2.0,
    this.borderColor = CustomColors.inputfieldGreyColor,
    this.onChanged,
    this.maxLength,
    this.minLength,
    this.maxLines = 2,
    this.minLines = 1,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscuringCharacter: "*",
      obscureText: widget.obscureText == false
          ? widget.obscureText
          : widget.isObscure,
      textCapitalization: widget.textCapitalization,
      textInputAction: widget.textInputAction,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: widget.onChanged,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      focusNode: widget.focusNode,
      readOnly: widget.readOnly,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      validator: (value) {
        if (widget.validator != null) {
          return widget.validator!(value ?? "");
        }
      },
      onTap: widget.onTap,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.fillColor ?? CustomColors.whiteColor,
        hintText: widget.hint,
        counterText: "",
        // suffixIcon: suffix,
        hintStyle: CustomStyle.textStyleButton1.copyWith(
          fontSize: 16.0.sp,
          color: widget.hintColor!.withOpacity(widget.hintColorOpacity!),
        ),
        contentPadding: widget.contentPadding,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: widget.activateFocus ? widget.borderWidth : 0,
            color: widget.borderColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: widget.activateFocus ? widget.borderWidth : 0,
            color: widget.borderColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: widget.activateFocus ? widget.borderWidth : 0,
            color: widget.borderColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: widget.activateFocus ? widget.borderWidth : 0,
            color: widget.activateFocus
                ? CustomColors.primaryColor
                : widget.borderColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: widget.activateFocus ? widget.borderWidth : 0,
            color: widget.activateFocus
                ? Colors.red
                : widget.borderColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: widget.activateFocus ? widget.borderWidth : 0,
            color: widget.activateFocus
                ? Colors.red
                : widget.borderColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        prefixIcon: widget.prefixIcon != null
            ? Container(
            padding: EdgeInsets.all(15.0), child: widget.prefixIcon!)
            : null,
        suffixIcon: widget.obscureText == false
            ? widget.suffix != null
            ? widget.suffix
            : null
            : GestureDetector(
          onTap: () {
            setState(() {
              widget.isObscure = !widget.isObscure;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(
                right: CustomDimensions.mediumPadding),
            child: widget.isObscure
                ? Icon(
              Icons.visibility_off,
              color: CustomColors.appBlackColor1
                  .withOpacity(0.3),
              size: 27,
            )
                : Icon(
              Icons.visibility,
              color: CustomColors.appBlackColor1
                  .withOpacity(0.3),
              size: 27,
            ),
          ),
        ),
      ),
    );
  }
}
