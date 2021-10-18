import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class DashboardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0.h,
      decoration: BoxDecoration(
        color: CustomColors.containerGreyColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Total Earnings",
                style: CustomStyle.textStyleBody2.copyWith(
                  fontWeight: FontWeight.w700,
                  color: CustomColors.secondaryColor,
                ),
              ),
              Gap(10.h),
              Text(
                "\$21,560",
                style: CustomStyle.textStyleBody2.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: CustomDimensions.textSize24,
                ),
              )
            ],
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("arrow".svg),
                  Gap(10.h),
                  Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: CustomColors.appGreenColor,
                        size: 16.0,
                      ),
                      Text(
                        "0,2%",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontSize: CustomDimensions.textSize14,
                          color: CustomColors.appGreenColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Gap(20.w),
              SvgPicture.asset(
                "total_earnings_icon".svg,
                width: 42.w,
                height: 43.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
