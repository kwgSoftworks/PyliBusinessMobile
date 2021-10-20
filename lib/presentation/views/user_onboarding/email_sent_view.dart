import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_button.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/validators.dart';

class EmailSentView extends HookWidget {
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
                onTap: (){
                  locator<NavigationHandler>().goBack();
                },
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
                "Email Sent!",
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
                "Please Check Your Email For Further Instructions",
                style: CustomStyle.textStyleBody2.copyWith(
                  color: CustomColors.appBlackColor1,
                  fontSize: CustomDimensions.textSize14,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              CustomButton(
                title: "GO TO LOGIN",
                buttonColor: CustomColors.secondaryColor,
                borderRadius: 10.0,
                onTap: (){
                  locator<NavigationHandler>().pushNamedAndRemoveUntil(Routes.login_screen);
                },
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }
}
