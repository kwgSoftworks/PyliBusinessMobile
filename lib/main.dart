import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pyli_business_mobile/handlers/__handlers.dart';
import 'package:pyli_business_mobile/models/dialog/dialog_manager.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/app_state/app_state_bloc.dart';
import 'package:pyli_business_mobile/presentation/bloc_controller/registration/registration_bloc.dart';
import 'package:pyli_business_mobile/presentation/routes/routes.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';
import 'package:pyli_business_mobile/utils/__utils.dart';

import 'presentation/bloc_controller/counter/counter_cubit.dart';
import 'presentation/routes/route_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await loadEnvFile();
  final url = dotenv.env['BASE_URL']!;
  await setupLocator(baseApi: url);

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((val) {
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
            create: (context) => locator<CounterCubit>(),
          ),
          BlocProvider<AppStateBloc>(
            create: (context) => locator<AppStateBloc>(),
          ),
          BlocProvider<RegistrationBloc>(
            create: (context) => locator<RegistrationBloc>(),
          )
        ],
        child: Page(),
      ),
    );
  });
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pyli App',
        theme: AppTheme.defaultAppTheme,
        initialRoute: Routes.decision_view,
        navigatorKey: locator<NavigationHandler>().navigatorKey,
        onGenerateRoute: RouteGenerator.generateRoute,
        builder: (context, widget) => Navigator(
          onGenerateRoute: (settings) => CupertinoPageRoute(
            builder: (context) => DialogManager(
              child: widget!,
            ),
          ),
        ),
      ),
    );
  }
}
