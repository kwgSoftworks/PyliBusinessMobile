import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/validators.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessDetailsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              keyboardType: TextInputType.emailAddress,
              validator: Validators.isEmailStr,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            Gap(20.h),
            Text(
              "Company Website",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomTextField(
              hint: "Company Website",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.validateIsEmpty,
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
            Gap(20.h),
            CustomTextField(
              hint: "Company Address",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.validateIsEmpty,
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
              validator: Validators.isEmailStr,
              keyboardType: TextInputType.number,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            Gap(20.h),
            Text(
              "LLC Number",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            Gap(5.h),
            CustomTextField(
              hint: "LLC Number",
              borderRadius: 10.0,
              activateFocus: false,
              keyboardType: TextInputType.number,
              validator: Validators.isEmailStr,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            Gap(20.h),
            Text(
              "Provider",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            Gap(5.h),
            CustomTextField(
              hint: "Provider",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.isEmailStr,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            Gap(20.h),
            Text(
              "Bank Name",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            Gap(5.h),
            CustomTextField(
              hint: "Bank Name",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.isEmailStr,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            Gap(20.h),
            Text(
              "Bank Account Number",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            Gap(5.h),
            CustomTextField(
              hint: "10 Digit Nuban",
              borderRadius: 10.0,
              activateFocus: false,
              keyboardType: TextInputType.number,
              validator: Validators.isEmailStr,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            Gap(10.h),
          ],
        ),
      ),
    );
  }
}
