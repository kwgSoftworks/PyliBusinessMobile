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
import 'package:pyli_business_mobile/utils/validators.dart';

class EditProfileView extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      header_title: "Edit Profile",
      leadingIconType: LeadingIconType.back_arrow,
      container: Container(
        color: Colors.white,
        width: double.infinity,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(20.h),
                      Text(
                        "First Name",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "First Name",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(20.h),
                      Text(
                        "Last Name",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "Last Name",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(20.h),
                      Text(
                        "Email",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "Email",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(20.h),
                      Text(
                        "Company Name",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "Company Name",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        keyboardType: TextInputType.text,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(20.h),
                      Text(
                        "Company Email",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "Company Email",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        keyboardType: TextInputType.emailAddress,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(20.h),
                      Text(
                        "Company Phone",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "Company Phone",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        keyboardType: TextInputType.number,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(20.h),
                      Text(
                        "Company Email",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "Company Email",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        keyboardType: TextInputType.emailAddress,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(20.h),
                      Text(
                        "Company Address",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: CustomDimensions.textSize16,
                        ),
                      ),
                      Gap(5.h),
                      CustomTextField(
                        hint: "Company Address",
                        borderRadius: 10.0,
                        activateFocus: false,
                        validator: Validators.validateIsEmpty,
                        keyboardType: TextInputType.text,
                        fillColor: CustomColors.inputfieldGreyColor,
                      ),
                      Gap(30.h),
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
    );
  }
}
