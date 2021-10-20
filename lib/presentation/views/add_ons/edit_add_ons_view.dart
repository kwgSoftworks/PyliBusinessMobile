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

class EditAddOnsView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Edit Add-Ons",
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
                              "Add-On Name",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: CustomDimensions.textSize16,
                                  ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Add-On Name",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Add-On Price",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: CustomDimensions.textSize16,
                                  ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Add-On Price",
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
                              "Add-On Description",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Add-On Description",
                              borderRadius: 10.0,
                              activateFocus: false,
                              keyboardType: TextInputType.text,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Required?",
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
                              groupType: "required",
                              onChanged: (value){
                                print(value.toString());
                              },
                            ),
                            Gap(20.h),
                            Text(
                              "Display Auto-Renewal Tag?",
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
                              groupType: "required",
                              onChanged: (value){
                                print(value.toString());
                              },
                            ),
                            Gap(20.h),
                            Text(
                              "Choose Add-On This Add-On is Based On",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "Additional Cleaning",
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            Text(
                              "Image",
                              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: CustomDimensions.textSize16,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CustomTextField(
                              hint: "No uploads",
                              readOnly: true,
                              borderRadius: 10.0,
                              activateFocus: false,
                              fillColor: CustomColors.inputfieldGreyColor,
                            ),
                            Gap(20.h),
                            CustomButton(
                              title: "UPLOAD",
                              titleColor: CustomColors.appBlackColor1,
                              titleBold: true,
                              buttonHeight: 43.h,
                              buttonWidth: 112.w,
                              buttonColor: CustomColors.greyColor2,
                              borderRadius: 10.0,
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
