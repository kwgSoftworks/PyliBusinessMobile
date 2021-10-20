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

class EditPlansView extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Edit Plans",
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
                            Gap(40.h),
                            Text(
                              "Plan Type",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomRadioWidget(
                              title1: "Residential",
                              title2: "Commercial",
                              groupType: "plan_type",
                              onChanged: (value){
                                print(value.toString());
                              },
                            ),
                            Gap(20.h),
                            Text(
                              "Plan Name",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Plan Name",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Plan Price",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                                hint: "Price",
                                borderRadius: 10.0,
                                activateFocus: false,
                                keyboardType: TextInputType.number,
                                fillColor: CustomColors.inputfieldGreyColor,
                                prefixIcon: SvgPicture.asset(
                                  "dollar".svg,
                                  color: CustomColors.secondaryColor,
                                )
                            ),
                            Gap(20.h),
                            Text(
                              "Billing Frequency",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Monthly",
                              borderRadius: 10.0,
                              activateFocus: false,
                              keyboardType: TextInputType.text,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Plan Description",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Plan Description",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Force Auto-Renewal?",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomRadioWidget(
                              title1: "NO",
                              title2: "YES",
                              groupType: "force-auto-renewal",
                              onChanged: (value){
                                print(value.toString());
                              },
                            ),
                            Gap(20.h),
                            Text(
                              "Featured Plan?",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomRadioWidget(
                              title1: "NO",
                              title2: "YES",
                              groupType: "featured_plan",
                              onChanged: (value){
                                print(value.toString());
                              },
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
