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

class ContractSetupView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Contract Setup",
      leadingIconType: LeadingIconType.drawer,
      container: SafeArea(
        top: false,
        child: Container(
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
                  CustomTextField(
                    hint: "Preview",
                    hintColor: CustomColors.appBlackColor1,
                    hintColorOpacity: 1,
                    borderRadius: 10.0,
                    obscureText: true,
                    activateFocus: false,
                    fillColor: CustomColors.inputfieldGreyColor,
                  ),
                  Gap(20.h),
                  Container(
                    width: 215.0.w,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: CustomColors.containerGreyColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(
                          buttonWidth: 100.w,
                          buttonHeight: 35.h,
                          borderRadius: 5.0,
                          title: "Individual",
                          buttonColor: CustomColors.secondaryColor,
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "Commercial",
                              style: CustomStyle.textStyleBody2.copyWith(
                                fontSize: CustomDimensions.textSize12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Gap(20.h),
                  Container(
                    padding: EdgeInsets.all(CustomDimensions.defaultMargin.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: CustomColors.containerGreyColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Body",
                              style: CustomStyle.textStyleBody2.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: CustomDimensions.textSize18,
                                color: CustomColors.appThinkGreen,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                locator<NavigationHandler>().pushNamed(Routes.edit_contract_body_view);
                              },
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "edit".svg,
                                    color: CustomColors.appBlackColor1
                                        .withOpacity(0.4),
                                    width: 25.0,
                                    height: 25.0,
                                  ),
                                  Gap(6.w),
                                  Text(
                                    "Edit",
                                    style: CustomStyle.textStyleBody2.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: CustomColors.appBlackColor1
                                          .withOpacity(0.6),
                                      fontSize: CustomDimensions.textSize14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Gap(20.h),
                        Text(
                          "Contract Terms",
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize14,
                            fontWeight: FontWeight.w700,
                            color: CustomColors.secondaryColor,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          "Amet, ac sit fames elit eu, lobortis purus. Pellentesque orci egestas sed aliquet. Vel hendrerit sed mauris aliquam ac fermentum metus pulvinar diam. Tellus ultrices in sit etiam felis, nulla. Etiam consectetur sollicitudin cursus at sagittis. Amet elit, viverra quam proin interdum elementum. Massa diam lectus ac mauris etiam vitae sed egestas ullamcorper. Aliquam mi nunc commodo sit ipsum. Eget diam commodo quam adipiscing cras. Hac purus ut vestibulum tristique. Elementum egestas pulvinar leo auctor et neque. Diam nibh feugiat praesent dolor tellus dui non aliquam laoreet. Nibh venenatis, malesuada euismod non amet.",
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize16,
                          ),
                        ),
                        Gap(20.h),
                        Text(
                          "Contract Terms",
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize14,
                            fontWeight: FontWeight.w700,
                            color: CustomColors.secondaryColor,
                          ),
                        ),
                        Gap(5.h),
                        Text(
                          "Amet, ac sit fames elit eu, lobortis purus. Pellentesque orci egestas sed aliquet. Vel hendrerit sed mauris aliquam ac fermentum metus pulvinar diam. Tellus ultrices in sit etiam felis, nulla. Etiam consectetur sollicitudin cursus at sagittis. Amet elit, viverra quam proin interdum elementum. Massa diam lectus ac mauris etiam vitae sed egestas ullamcorper. Aliquam mi nunc commodo sit ipsum. Eget diam commodo quam adipiscing cras. Hac purus ut vestibulum tristique. Elementum egestas pulvinar leo auctor et neque. Diam nibh feugiat praesent dolor tellus dui non aliquam laoreet. Nibh venenatis, malesuada euismod non amet.",
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize16,
                          ),
                        ),
                        Gap(20.h),
                        InkWell(
                          onTap: (){
                            locator<NavigationHandler>().pushNamed(Routes.edit_signature_base_view);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Signature Base",
                                style: CustomStyle.textStyleBody2.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: CustomDimensions.textSize18,
                                  color: CustomColors.appThinkGreen,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "edit".svg,
                                    color: CustomColors.appBlackColor1
                                        .withOpacity(0.4),
                                    width: 25.0,
                                    height: 25.0,
                                  ),
                                  Gap(6.w),
                                  Text(
                                    "Edit",
                                    style: CustomStyle.textStyleBody2.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: CustomColors.appBlackColor1
                                          .withOpacity(0.6),
                                      fontSize: CustomDimensions.textSize14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Gap(20.h),
                        Text(
                          "Business Signature",
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: CustomDimensions.textSize12,
                            color: CustomColors.secondaryColor,
                          ),
                        ),
                        Gap(6.h),
                        Container(
                          height: 120.0.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: CustomColors.greyColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Placeholder(
                              strokeWidth: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
