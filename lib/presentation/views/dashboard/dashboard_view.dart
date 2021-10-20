import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class DashboardView extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Home",
      leadingIconType: LeadingIconType.drawer,
      container: Container(
        color: Colors.white,
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
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: CustomColors.dashboardBannerColor,
                  ),
                  child: Center(
                    child: Text("Information Banner"),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: CustomColors.containerGreyColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(
                    CustomDimensions.defaultMargin,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70.0,
                            width: 70.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: CustomColors.homeGreyColor,
                            ),
                            child: Placeholder(
                              strokeWidth: 1,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Business Name",
                                style: CustomStyle.textStyleBody2
                                    .copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                    CustomDimensions.textSize16,
                                    color: CustomColors
                                        .secondaryColor),
                              ),
                              Gap(5.h),
                              Text(
                                "mybusinessname@email.com",
                                style:
                                CustomStyle.textStyleBody2.copyWith(
                                  fontSize: CustomDimensions.textSize12,
                                  color: CustomColors.appBlackColor1
                                      .withOpacity(0.5),
                                ),
                              ),
                              Gap(5.h),
                              Text(
                                "087654567234",
                                style:
                                CustomStyle.textStyleBody2.copyWith(
                                  fontSize: CustomDimensions.textSize12,
                                  color: CustomColors.appBlackColor1
                                      .withOpacity(0.5),
                                ),
                              ),
                              Gap(5.h),
                              Text(
                                "8558 Green Rd.",
                                style:
                                CustomStyle.textStyleBody2.copyWith(
                                  fontSize: CustomDimensions.textSize12,
                                  color: CustomColors.appBlackColor1
                                      .withOpacity(0.5),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Gap(30.h),
                      Text(
                        "Your Company URL",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontSize: CustomDimensions.textSize12,
                          color: CustomColors.appBlackColor1
                              .withOpacity(0.6),
                        ),
                      ),
                      Gap(8.h),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0.w),
                            color: CustomColors.lightPrimaryColor2),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        height: 44.h,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "https://joeseptic.autotracts.us",
                              style:
                              CustomStyle.textStyleBody2.copyWith(
                                fontSize: CustomDimensions.textSize14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SvgPicture.asset(
                              "copy_img".svg,
                              color: CustomColors.secondaryColor
                                  .withOpacity(0.5),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Gap(30.h),
                DashboardComponent(),
                Gap(15.h),
                DashboardComponent(),
                Gap(15.h),
                DashboardComponent(),
                Gap(25.h),
                Gap(40.0.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
