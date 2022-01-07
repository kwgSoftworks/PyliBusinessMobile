import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/app_state/app_state.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/app_state/app_state_bloc.dart';
import 'package:pyli_business_mobile/presentation/custom_design/custom_reg_stage_design.dart';
import 'package:pyli_business_mobile/presentation/views/user_onboarding/components/single_indicator_widgets.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class CustomSignupIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppStateBloc, AppState>(
      builder: (context, state) {
        return Container(
          width: 315.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomPaint(
                    painter: CustomRegStateDesignLeft(
                      isActive: state.currentRegistrationStage ==
                              RegistrationStageEnum.step1 ||
                          state.currentRegistrationStage ==
                              RegistrationStageEnum.step2 ||
                          state.currentRegistrationStage ==
                              RegistrationStageEnum.step3,
                    ),
                    child: Container(
                      width: 120.0,
                      height: 40.0,
                      child: Center(
                        child: SingleIndicatorWidget(
                          isActivated: state.currentRegistrationStage ==
                                  RegistrationStageEnum.step1 ||
                              state.currentRegistrationStage ==
                                  RegistrationStageEnum.step2 ||
                              state.currentRegistrationStage ==
                                  RegistrationStageEnum.step3,
                          step: "1",
                          isCurrentStep: state.currentRegistrationStage ==
                              RegistrationStageEnum.step1,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomPaint(
                    painter: CustomRegStateDesignCenter(
                      isActive: state.currentRegistrationStage ==
                              RegistrationStageEnum.step2 ||
                          state.currentRegistrationStage ==
                              RegistrationStageEnum.step3,
                    ),
                    child: Container(
                      width: 120.0,
                      height: 40.0,
                      child: Center(
                        child: SingleIndicatorWidget(
                          isActivated: state.currentRegistrationStage ==
                                  RegistrationStageEnum.step2 ||
                              state.currentRegistrationStage ==
                                  RegistrationStageEnum.step3,
                          isCurrentStep: state.currentRegistrationStage ==
                              RegistrationStageEnum.step2,
                          step: "2",
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomPaint(
                    painter: CustomRegStateDesignRight(
                      isActive: state.currentRegistrationStage ==
                          RegistrationStageEnum.step3,
                    ),
                    child: Container(
                      width: 120.0,
                      height: 40.0,
                      child: Center(
                        child: SingleIndicatorWidget(
                          isCurrentStep: state.currentRegistrationStage ==
                              RegistrationStageEnum.step3,
                          step: "3",
                          isActivated: state.currentRegistrationStage ==
                              RegistrationStageEnum.step3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
