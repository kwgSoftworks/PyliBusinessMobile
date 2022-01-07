import 'package:get_it/get_it.dart';
import 'package:pyli_business_mobile/data/services/local/__local.dart';
import 'package:pyli_business_mobile/data/services/remote/implementations/user_repositories_impl.dart';
import 'package:pyli_business_mobile/data/services/remote/repositories/user_repositories.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/app_state/app_state_bloc.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/counter/counter_cubit.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/registration/registration_bloc.dart';
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

  locator.registerFactory(
        () => RegistrationBloc(),
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

  locator.registerLazySingleton<UserRepository>(
        () => UserRepositoriesImpl(
      baseApi,
      cache: locator(),
    ),
  );

}
