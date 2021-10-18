import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends HookWidget {
  String title;
  Function()? onTap;
  Widget? titleIcon;
  bool isBorderButton;
  Color titleColor;
  bool titleBold;
  double titleSize;
  Color buttonColor;
  double buttonHeight;
  double buttonWidth;
  EdgeInsetsGeometry padding;
  bool isProcessing;
  bool buttonActivated;
  double borderRadius;
  bool hasShadow;
  Color borderColor;
  double borderWidth;

  CustomButton({
    this.title = "",
    this.onTap,
    this.titleIcon = null,
    this.isBorderButton = false,
    this.titleColor = Colors.white,
    this.titleBold = false,
    this.titleSize = CustomDimensions.smallTextSize,
    this.buttonColor = CustomColors.primaryColor,
    this.borderColor = CustomColors.primaryColor,
    this.buttonHeight = 55.0,
    this.buttonWidth = double.infinity,
    this.padding = EdgeInsets.zero,
    this.isProcessing = false,
    this.buttonActivated = true,
    this.borderRadius = 38.0,
    this.hasShadow = false,
    this.borderWidth = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: this.isProcessing
            ? null
            : this.buttonActivated
                ? onTap
                : null,
        child: Container(
          padding: padding,
          width: this.buttonWidth,
          height: buttonHeight.h,
          decoration: BoxDecoration(
            color: isBorderButton
                ? Colors.transparent
                : this.isProcessing
                    ? buttonColor.withOpacity(0.5)
                    : this.buttonActivated
                        ? buttonColor
                        : buttonColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
            border: isBorderButton
                ? Border.all(
                    width: this.borderWidth,
                    color: this.isProcessing
                        ? buttonColor.withOpacity(0.5)
                        : this.buttonActivated
                            ? buttonColor
                            : buttonColor.withOpacity(0.5),
                  )
                : Border.all(
                    color: Colors.transparent,
                  ),
            boxShadow: this.hasShadow
                ? [
                    BoxShadow(
                      color: CustomColors.primaryColor.withOpacity(.25),
                      offset: Offset(0, 5),
                      blurRadius: 10,
                      spreadRadius: 3,
                    )
                  ]
                : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      this.titleIcon != null ? Row(
                        children: [
                          titleIcon!,
                          Gap(10.w),
                        ],
                      ) : SizedBox(),
                      Text(
                        title,
                        style: CustomStyle.textStyleButton.copyWith(
                          fontWeight:
                              titleBold ? FontWeight.w500 : FontWeight.w400,
                          fontSize: titleSize.sp,
                          color: titleColor,
                        ),
                      ),
                      this.isProcessing
                          ? SizedBox(
                              width: 15.0,
                            )
                          : SizedBox(),
                      this.isProcessing
                          ? SizedBox(
                              width: 20.0,
                              height: 20.0,
                              child: CircularProgressIndicator(
                                backgroundColor: Colors.transparent,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  isBorderButton
                                      ? CustomColors.primaryColor
                                      : Colors.white,
                                ),
                              ),
                            )
                          : SizedBox()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
