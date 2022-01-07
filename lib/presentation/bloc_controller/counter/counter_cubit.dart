import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/counter/counter_state.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

class CounterCubit extends Cubit<CounterState>{

  CounterCubit() : super(CounterState(counterValue: 0));

  void increment() {

    locator<NavigationHandler>().pushNamed(Routes.registration_screen);

    emit(CounterState(counterValue: state.counterValue + 1));

  }
  
  void decrement() => emit(CounterState(counterValue: state.counterValue - 1));

}