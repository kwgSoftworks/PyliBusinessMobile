import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: CustomColors.containerGreyColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Question",
                    style: CustomStyle.textStyleBody2.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: CustomDimensions.textSize14,
                      color: CustomColors.primaryColor,
                    ),
                  ),
                  Gap(5.0.h),
                  Text(
                    "Why is the sky blue and red red?",
                    style: CustomStyle.textStyleBody2.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: CustomDimensions.textSize16,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset("edit_grey".svg),
            ],
          ),
          Gap(20.h),
          Text(
            "Answer",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize14,
              fontWeight: FontWeight.w700,
              color: CustomColors.primaryColor,
            ),
          ),
          Gap(10.h),
          Text(
            "The blue component of the spectrum of visible light has shorter wavelengths and higher frequencies than the red component. ... Because that occurs much more often for blue light than for red, the sky appears blue. Violet light is actually scattered even a bit more strongly than blue.",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
