import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_widgets/custom_widget.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/utils/enums.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class CreateBusinessView extends HookWidget {

  @override
  Widget build(BuildContext context) {

    return CustomScaffold(
      header_title: "Create Business",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
        child: SafeArea(
          top: false,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: CustomDimensions.margin16,
            ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(20.h),
                            Text(
                              "Type Of Customer",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Type Of Customer",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "First Name",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "First Name",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Last Name",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Last Name",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Email Address",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Email Address",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Site Address",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Site Address",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Phone Number",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Phone Number",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.number,
                            ),

                            Gap(20.h),
                            Text(
                              "Permit Number",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Permit Number",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.number,
                            ),
                            Gap(20.h),
                            Text(
                              "Agency",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Agency Code",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.number,
                            ),
                            Gap(20.h),
                            Text(
                              "Manufacturer",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Manufacturer",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.text,
                            ),
                            Gap(20.h),
                            Text(
                              "ID Number",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "ID Number",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.number,
                            ),
                            Gap(20.h),
                            Text(
                              "Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Password",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                            ),
                            Gap(20.h),
                            Text(
                              "Re-Enter Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Re-Enter Password",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.number,
                              obscureText: true,
                            ),
                            Gap(50.h),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SafeArea(
                  top: false,
                  child: Column(
                    children: [
                      Gap(10.h),
                      CustomButton(
                        title: "CREATE CUSTOMER",
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
                      Gap(10.h),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}