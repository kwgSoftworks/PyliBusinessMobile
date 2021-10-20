import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/presentation/views/dashboard/component/component.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class AccountView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Account",
      leadingIconType: LeadingIconType.drawer,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      buttonWidth: 158.w,
                      buttonHeight: 46.h,
                      buttonColor: CustomColors.lightPrimaryColor,
                      titleColor: CustomColors.primaryColor,
                      titleIcon: SvgPicture.asset("edit".svg),
                      titleBold: true,
                      title: "Edit Profile",
                      borderRadius: 15.0,
                      onTap: (){
                        locator<NavigationHandler>().pushNamed(Routes.edit_profile_view);
                      },
                    ),
                    CustomButton(
                      buttonWidth: 158.w,
                      buttonHeight: 46.h,
                      buttonColor: CustomColors.yelloColor,
                      titleColor: CustomColors.primaryColor,
                      titleIcon: SvgPicture.asset("lock_icon".svg),
                      titleBold: true,
                      title: "Change Password",
                      borderRadius: 15.0,
                      onTap: (){
                        locator<NavigationHandler>().pushNamed(Routes.change_password_view);
                      },
                    ),
                  ],
                ),
                Gap(20.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: CustomDimensions.largeMargin,
                    horizontal: CustomDimensions.defaultMargin,
                  ),
                  decoration: BoxDecoration(
                      color: CustomColors.containerGreyColor,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          locator<NavigationHandler>().pushNamed(Routes.upload_image_view);
                        },
                        child: Container(
                          width: 80.w,
                          height: 80.h,
                          child: Stack(
                            children: [
                              Container(
                                height: 76.h,
                                width: 76.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CustomColors.secondaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "JO",
                                    style: CustomStyle.textStyleBody2.copyWith(
                                        fontSize: 26.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: CustomColors.lightPrimaryColor,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "camera_alt".svg,
                                      height: 20.h,
                                      width: 20.w,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Gap(20.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Joshua Okwe",
                              style: CustomStyle.textStyleBody2.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                              ),
                            ),
                            Gap(10.h),
                            Text(
                              "joshuaokwe@gmail.com",
                              style: CustomStyle.textStyleBody2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: CustomColors.textGreyColor,
                              ),
                            ),
                            Gap(5.h),
                            Text(
                              "(603) 555-0123",
                              style: CustomStyle.textStyleBody2.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: CustomColors.textGreyColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Gap(20.h),
                Container(
                  height: 270.h,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: CustomDimensions.largeMargin,
                    horizontal: CustomDimensions.defaultMargin,
                  ),
                  decoration: BoxDecoration(
                    color: CustomColors.containerGreyColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "sample_company_icon".png,
                          ),
                          Gap(20.w),
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomColors.lightPrimaryColor,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "camera_alt".svg,
                                height: 25.h,
                                width: 25.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(15.h),
                      Text(
                        "Joe's John Repair",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ),
                      Gap(10.h),
                      Text(
                        "joshuaokwe@gmail.com",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: CustomColors.textGreyColor,
                        ),
                      ),
                      Gap(5.h),
                      Text(
                        "(603) 555-0123",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: CustomColors.textGreyColor,
                        ),
                      ),Gap(10.h),
                      Text(
                        "2715 Ash Dr. San Jose, South\nDakota 83475",
                        style: CustomStyle.textStyleBody2.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: CustomColors.textGreyColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Gap(20.h),
                CustomButton(
                  buttonWidth: double.infinity,
                  buttonHeight: 46.h,
                  buttonColor: CustomColors.yelloColor,
                  titleColor: CustomColors.redColor,
                  titleIcon: SvgPicture.asset("logout_icon".svg),
                  titleBold: true,
                  title: "Log Out",
                  borderRadius: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
