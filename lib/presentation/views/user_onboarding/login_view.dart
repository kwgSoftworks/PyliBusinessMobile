import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_button.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/validators.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: CustomColors.whiteColor,
      builder: (size) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: CustomDimensions.margin24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  locator<NavigationHandler>()
                      .pushNamedAndRemoveUntil(Routes.decision_view);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  child: SizedBox(
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 20.0,
                      color: CustomColors.appBlackColor1,
                    ),
                  ),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: CustomColors.inputfieldGreyColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome Back",
                style: CustomStyle.textStyleBody2.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: CustomDimensions.textSize24,
                  color: CustomColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Please Log Into Your Account",
                style: CustomStyle.textStyleBody2.copyWith(
                  color: CustomColors.appBlackColor1,
                ),
              ),
              Gap(40.h),
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
                hint: "Enter Password",
                borderRadius: 10.0,
                obscureText: true,
                activateFocus: false,
                validator: Validators.validateLoginPassword,
                fillColor: CustomColors.inputfieldGreyColor,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: CustomStyle.textStyleBody2.copyWith(
                        fontSize: CustomDimensions.textSize16,
                        fontWeight: FontWeight.w700,
                        color: CustomColors.secondaryColor),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              CustomButton(
                title: "LOGIN",
                buttonColor: CustomColors.secondaryColor,
                borderRadius: 10.0,
                onTap: () {
                  locator<NavigationHandler>()
                      .pushNamedAndRemoveUntil(Routes.dashboard_view);
                },
              ),
              Spacer(),
              InkWell(
                onTap: (){
                  locator<NavigationHandler>().pushReplacementNamed(Routes.registration_screen);
                },
                child: Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("You do not have an account?"),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          "Sign Up",
                          style: CustomStyle.textStyleBody2.copyWith(
                            fontSize: CustomDimensions.textSize16,
                            fontWeight: FontWeight.w700,
                            color: CustomColors.secondaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
