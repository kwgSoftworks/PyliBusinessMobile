import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_button.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class DecisionView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: CustomDimensions.defaultMargin,
              ),
              child: SafeArea(
                bottom: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                      child: Image.asset("pyli_icon".png),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Text(
                      "Welcome to Pyli Business",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: CustomDimensions.textSize24,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: CustomDimensions.defaultMargin * 2.5,
                      ),
                      child: Text(
                        "Ament minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia.",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: CustomDimensions.textSize14,
                              color: CustomColors.homeGreyColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      title: "Login to your account",
                      titleColor: CustomColors.inputfieldGreyColor,
                      buttonColor: Colors.white.withOpacity(0.2),
                      borderRadius: 5.0,
                      buttonHeight: 55.0,
                      onTap: () {
                        locator<NavigationHandler>().pushNamedAndRemoveUntil(
                          Routes.login_screen,
                        );
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    CustomButton(
                      title: "Create an account",
                      buttonColor: CustomColors.whiteColor.withOpacity(0.2),
                      titleColor: CustomColors.inputfieldGreyColor,
                      borderRadius: 5.0,
                      buttonHeight: 55.0,
                      isBorderButton: true,
                      onTap: (){
                        locator<NavigationHandler>().pushNamedAndRemoveUntil(
                          Routes.registration_screen,
                        );
                      },
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 100.0,
            color: CustomColors.whiteColor.withOpacity(0.2),
            child: SafeArea(
              top: false,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("terms_icon".svg),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Terms and Conditions",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontSize: CustomDimensions.body2TextSize,
                          color: Colors.white,
                        ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
