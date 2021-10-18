import 'package:pyli_business_mobile/utils/enums.dart';

class AppState {
  RegistrationStageEnum? currentRegistrationStage;
  SideBarItems? selectedSidebar;

  AppState({
    this.currentRegistrationStage,
    this.selectedSidebar,
  });

  AppState copyWith({
    RegistrationStageEnum? currentRegistrationStage,
    SideBarItems? selectedSidebar,
  }) {
    return AppState(
      currentRegistrationStage:
          currentRegistrationStage ?? this.currentRegistrationStage,
      selectedSidebar: selectedSidebar ?? this.selectedSidebar,
    );
  }
}
