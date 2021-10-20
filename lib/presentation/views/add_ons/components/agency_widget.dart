import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgencyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        color: CustomColors.containerGreyColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 130.h,
                width: 130.h,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: CustomColors.greyColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Placeholder(
                  strokeWidth: 1,
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      locator<NavigationHandler>().pushNamed(Routes.edit_add_ons_view);
                    },
                    child: SvgPicture.asset(
                      "edit".svg,
                      color: CustomColors.appBlackColor2,
                      width: 25.w,
                      height: 25.h,
                    ),
                  ),
                  Gap(30.w),
                  SvgPicture.asset(
                    "delete".svg,
                    color: CustomColors.appBlackColor2,
                    width: 25.w,
                    height: 25.h,
                  ),
                ],
              ),
            ],
          ),
          Gap(20.h),
          Text(
            "Add-On Name",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize12,
              fontWeight: FontWeight.w700,
              color: CustomColors.secondaryColor,
            ),
          ),
          Gap(5.h),
          Text(
            "Additional Cleaning",
            style: CustomStyle.textStyleBody2.copyWith(
              fontSize: CustomDimensions.textSize18,
              fontWeight: FontWeight.w700,
              color: CustomColors.appBlackColor1,
            ),
          ),
          Gap(30.h),
          Text(
            "Description",
            style: CustomStyle.textStyleBody2.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: CustomDimensions.textSize12,
              color: CustomColors.secondaryColor,
            ),
          ),
          Gap(5.h),
          Text(
              "What is the difference between the republicans and the democrats political response to the great depression of the 1930s asdfkjlajds falskdj flaksdj flsdf "),
          Gap(30.h),
          Text(
            "Price",
            style: CustomStyle.textStyleBody2.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: CustomDimensions.textSize12,
              color: CustomColors.secondaryColor,
            ),
          ),
          Gap(5.h),
          Text("\$120"),
          Gap(30.h),
          Text(
            "Required",
            style: CustomStyle.textStyleBody2.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: CustomDimensions.textSize12,
              color: CustomColors.secondaryColor,
            ),
          ),
          Gap(5.h),
          Text("NO"),
          Gap(30.h),
          Text(
            "Visibility Logic",
            style: CustomStyle.textStyleBody2.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: CustomDimensions.textSize12,
              color: CustomColors.secondaryColor,
            ),
          ),
          Gap(5.h),
          Text("YES"),
        ],
      ),
    );
  }
}
