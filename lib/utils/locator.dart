import 'package:get_it/get_it.dart';
import 'package:pyli_business_mobile/data/services/local/__local.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/bloc/app_state_bloc.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/bloc/counter_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

///Registers dependencies
Future<void> setupLocator({String baseApi = ''}) async {

  locator.registerFactory(
        () => CounterCubit(),
  );

  locator.registerFactory(
        () => AppStateBloc(),
  );

  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton(sharedPreferences);

  //Local storage
  locator.registerLazySingleton<SecureStorage>(
    () => SecureStorageImpl(),
  );

  locator.registerLazySingleton<LocalCache>(
    () => LocalCacheImpl(
      sharedPreferences: locator(),
      storage: locator(),
    ),
  );

  //Handlers
  locator.registerLazySingleton<NavigationHandler>(
    () => NavigationHandlerImpl(),
  );

  locator.registerLazySingleton<DialogHandler>(
    () => DialogHandlerImpl(),
  );

}
