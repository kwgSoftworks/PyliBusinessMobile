import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class SinglePlanWidget extends StatelessWidget {
  bool isFeatured;

  SinglePlanWidget({
    this.isFeatured = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 15.w,
      ),
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
          color: CustomColors.lightPrimaryColor2,
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Basic Plan",
                    style: CustomStyle.textStyleBody2.copyWith(
                      fontSize: CustomDimensions.textSize12,
                      color: CustomColors.appThinkGreen,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Gap(5.h),
                  Text(
                    "\$120",
                    style: CustomStyle.textStyleBody2
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 36.sp),
                  )
                ],
              ),
              Container(
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                      },
                      child: Column(
                        children: [
                          isFeatured
                              ? SvgPicture.asset(
                                  "star".svg,
                                  color: CustomColors.thinkYellowColor,
                                )
                              : SvgPicture.asset(
                                  "star".svg,
                                ),
                          isFeatured
                              ? Text(
                                  "Featured",
                                  style: CustomStyle.textStyleBody2.copyWith(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                    Gap(25.w),
                    InkWell(
                      onTap: () {
                        locator<NavigationHandler>()
                            .pushNamed(Routes.edit_plans_view);
                      },
                      child: SvgPicture.asset("edit_grey".svg),
                    ),
                    Gap(25.w),
                    InkWell(
                      child: SvgPicture.asset("delete".svg),
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(30.h),
          Text(
            "Frequency",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize12,
              fontWeight: FontWeight.w700,
            ),
          ),
          Gap(5.h),
          Text(
            "Yearly",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(30.h),
          Text(
            "Auto-Renewal",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize12,
              fontWeight: FontWeight.w700,
            ),
          ),
          Gap(5.h),
          Text(
            "Yes",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(30.h),
          Text(
            "Plan Description",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize12,
              fontWeight: FontWeight.w700,
            ),
          ),
          Gap(5.h),
          Text(
            "What is the difference between the repuclicans and the democrats political response to the ",
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
