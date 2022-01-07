import 'package:pyli_business_mobile/utils/enums.dart';

enum RegistrationNavigationDirection {
  forward,
  backward,
}

abstract class AppStateEvent {}

class RegistrationNavigationStageChanged extends AppStateEvent {

  final RegistrationNavigationDirection? registrationNavigationDirection;

  RegistrationNavigationStageChanged({
    this.registrationNavigationDirection = RegistrationNavigationDirection.forward,
  });

}

class SelectedSideBarChanged extends AppStateEvent {

  final SideBarItems newSideBarItem;

  SelectedSideBarChanged({required this.newSideBarItem});
}
