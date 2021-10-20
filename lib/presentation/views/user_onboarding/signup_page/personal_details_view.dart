import 'package:flutter/material.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/validators.dart';

class PersonalDetailsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "First Name",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomTextField(
              hint: "First Name",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.validateIsEmpty,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Last Name",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomTextField(
              hint: "Last Name",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.validateIsEmpty,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Email",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomTextField(
              hint: "Email",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.isEmailStr,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Password",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomTextField(
              hint: "Password",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.validateLoginPassword,
              obscureText: true,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Re-Enter Password",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: CustomDimensions.textSize16,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            CustomTextField(
              hint: "Re-Enter Password",
              borderRadius: 10.0,
              activateFocus: false,
              validator: Validators.validateLoginPassword,
              obscureText: true,
              fillColor: CustomColors.inputfieldGreyColor,
            ),
            SizedBox(
              height: 20.0,
            ),

          ],
        ),
      ),
    );
  }
}
