import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/app_state/app_state.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/app_state/app_state_bloc.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/app_state/app_state_event.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/form_submission_status.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/registration/registration_bloc.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/registration/registration_event.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/registration/registration_state.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_button.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_design.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_reg_stage_design.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/presentation/style/custom_dimensions.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/components/custom_signup_indicator.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/signup_page/business_detail_view.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/signup_page/personal_details_view.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/signup_page/upload_logo_view.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';
import 'package:pyli_business_mobile/utils/validators.dart';

class SignUpView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: CustomColors.whiteColor,
      resizeToAvoidBottomInset: false,
      builder: (size) {
        return BlocListener<AppStateBloc, AppState>(
          listener: (context, state) {
            if (state.currentRegistrationStage ==
                RegistrationStageEnum.completed) {
              context.read<RegistrationBloc>().add(
                    RegistrationSubmitted(),
                  );
            }
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: CustomDimensions.margin24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
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
                        onTap: () {
                          context.read<AppStateBloc>().add(
                                RegistrationNavigationStageChanged(
                                  registrationNavigationDirection:
                                      RegistrationNavigationDirection.backward,
                                ),
                              );
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Create An Account",
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
                        "Fill The Form Below To Continue",
                        style: CustomStyle.textStyleBody2.copyWith(
                            color: CustomColors.appBlackColor1,
                            fontSize: CustomDimensions.textSize14,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Already have an account?",
                                style: CustomStyle.textStyleBody2.copyWith(
                                    color: CustomColors.appBlackColor1,
                                    fontSize: CustomDimensions.textSize14,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "Login",
                                style: CustomStyle.textStyleBody2.copyWith(
                                  fontSize: CustomDimensions.textSize14,
                                  fontWeight: FontWeight.w700,
                                  color: CustomColors.secondaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                      ),
                      Center(
                        child: CustomSignupIndicator(),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: BlocBuilder<AppStateBloc, AppState>(
                          builder: (context, state) {
                            return Text(
                              state.currentRegistrationStage ==
                                      RegistrationStageEnum.step1
                                  ? "Business Details"
                                  : state.currentRegistrationStage ==
                                          RegistrationStageEnum.step2
                                      ? "Upload Logo & Icon"
                                      : "Personal Details",
                              style: CustomStyle.textStyleBody2.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: CustomDimensions.textSize18),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: BlocBuilder<AppStateBloc, AppState>(
                    builder: (context, state) {
                      return bodyBuilder(state.currentRegistrationStage!);
                    },
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      BlocBuilder<RegistrationBloc, RegistrationState>(
                          builder: (context, state) {
                        return CustomButton(
                          title: "SIGN UP",
                          buttonColor: CustomColors.secondaryColor,
                          borderRadius: 10.0,
                          isProcessing:
                              state.formSubmissionStatus is FormSubmitting,
                          onTap: () {
                            context.read<AppStateBloc>().add(
                                  RegistrationNavigationStageChanged(),
                                );
                          },
                        );
                      }),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "By signing up, you agree to PyLi",
                                style: CustomStyle.textStyleBody2.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: CustomDimensions.textSize16,
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Text(
                                "Terms Of Use",
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
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget bodyBuilder(RegistrationStageEnum registrationStageEnum) {
    switch (registrationStageEnum) {
      case RegistrationStageEnum.step1:
        return BusinessDetailsView();
      case RegistrationStageEnum.step2:
        return UploadPhotoView();
      case RegistrationStageEnum.step3:
        return PersonalDetailsView();
      default:
        return BusinessDetailsView();
    }
  }
}
