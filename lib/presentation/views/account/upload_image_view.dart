import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class UploadImageView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Upload Image",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: CustomDimensions.margin16,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(20.h),
                Container(
                  width: double.infinity,
                  height: 335.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: CustomColors.secondaryColor,
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            "JO",
                            style: CustomStyle.textStyleBody2.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 90.sp,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: CustomButton(
                            title: "UPLOAD IMAGE",
                            titleColor: CustomColors.primaryColor,
                            buttonWidth: 200.0,
                            borderRadius: 5.0,
                            buttonColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(20.h),
                CustomButton(
                  title: "SAVE",
                  buttonColor: CustomColors.secondaryColor,
                  borderRadius: 10,
                  titleBold: true,
                ),
                Gap(10.h),
                CustomButton(
                  title: "CANCEL",
                  titleColor: CustomColors.secondaryColor,
                  isBorderButton: true,
                  borderRadius: 10,
                  titleBold: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
