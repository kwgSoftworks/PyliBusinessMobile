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

class CreateCouponsView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Create Coupons",
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
                              "Coupon Name",
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
                              hint: "Coupon Name",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Expiry Date",
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
                              hint: "Expiry Date",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Coupon Description",
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
                              hint: "Coupon Description",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Code",
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
                              hint: "Code",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Amount",
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
                              hint: "Amount",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                              keyboardType: TextInputType.number,
                              prefixIcon: SvgPicture.asset(
                                "dollar".svg,
                                color: CustomColors.secondaryColor,
                              ),
                            ),
                            Gap(20.h),
                            Text(
                              "What Can This Coupon Be Used On?",
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
                              hint: "Noth",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Choose Plan(s)",
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
                              hint: "Choose plan(s)",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Does This Coupon Repeat?",
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
                            CustomRadioWidget(
                              title1: "Yes",
                              title2: "No",
                              groupType: "active",
                              onChanged: (value) {
                                print(value.toString());
                              },
                            ),
                            Gap(20.h),
                            Text(
                              "Burn After No",
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
                              hint: "Burn After No",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
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
                        title: "CREATE",
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
