import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/events/app_state_event.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/states/app_state.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';
import 'package:pyli_business_mobile/utils/enums.dart';

class AppStateBloc extends Bloc<AppStateEvent, AppState> {

  AppStateBloc()
      : super(AppState(
    currentRegistrationStage: RegistrationStageEnum.step1,
    selectedSidebar: SideBarItems.home,
  )) {

    on<RegistrationNavigationStageChanged>(navigateRegistrationStage);

    on<SelectedSideBarChanged>(sideBarNavigator);

  }

  void navigateRegistrationStage(RegistrationNavigationStageChanged event, Emitter<AppState> emit) {

    if(event.registrationNavigationDirection == RegistrationNavigationDirection.forward){

      switch (state.currentRegistrationStage) {

        case RegistrationStageEnum.step1:
          emit(state.copyWith(
              currentRegistrationStage: RegistrationStageEnum.step2));
          break;
        case RegistrationStageEnum.step2:
          emit(state.copyWith(currentRegistrationStage: RegistrationStageEnum.step3));
          break;
        default:
          locator<NavigationHandler>()
              .pushNamedAndRemoveUntil(Routes.dashboard_view);
          break;
      }

    }else{

      switch (state.currentRegistrationStage) {

        case RegistrationStageEnum.step3:
          emit(state.copyWith(currentRegistrationStage: RegistrationStageEnum.step2));
          break;
        case RegistrationStageEnum.step2:
          emit(state.copyWith(currentRegistrationStage: RegistrationStageEnum.step1));
          break;
        default:
          locator<NavigationHandler>()
              .pushNamedAndRemoveUntil(Routes.decision_view);
          break;
      }

    }
  }

  void drawerNavigator(String route){
    //CLOSE SIDEBAR MENU
    locator<NavigationHandler>().goBack();

    //NAVIGATE TO VIEW
    locator<NavigationHandler>()
        .pushNamedAndRemoveUntil(route);

  }

  void sideBarNavigator(SelectedSideBarChanged event, Emitter<AppState> emit) {

    switch (event.newSideBarItem) {
      case SideBarItems.home:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.dashboard_view);
        break;
      case SideBarItems.customer:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.customer_view);
        break;
      case SideBarItems.payment:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.transactions_view);
        break;
      case SideBarItems.plans:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.plans_n_pricing_view);
        break;
      case SideBarItems.add_ons:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.add_ons_view);
        break;
      case SideBarItems.contracts:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.contract_setup_view);
        break;
      case SideBarItems.options:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.options_view);
        break;
      case SideBarItems.account:
        emit(state.copyWith(selectedSidebar: event.newSideBarItem));
        drawerNavigator(Routes.account_view);
        break;
      default:
        //CLOSE SIDEBAR MENU
        drawerNavigator(Routes.dashboard_view);
        break;
    }
  }

}
