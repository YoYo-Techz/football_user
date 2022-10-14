import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:myfootball/modules/auth/auth_module.dart';
import 'package:myfootball/modules/home/stores/event_store.dart';
import 'package:myfootball/modules/splash/splash_widget.dart';
import 'package:myfootball/services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_routes.dart';
import 'clients/api_client.dart';
import 'modules/home/home_module.dart';
import 'modules/home/repositories/home_repo_impl.dart';
import 'modules/home/stores/home_store.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind((i) => Logger(printer: PrettyPrinter(methodCount: 0))),
    Bind((i) => FirebaseRemoteConfig.instance),
    Bind((i) => FirebaseCrashlytics.instance),
    Bind((i) => FirebaseAnalytics.instance),
    Bind((i) => SharedPreferences.getInstance()),
    Bind((i) => APIClient()),
    Bind((i) => APIService.create(i.get<APIClient>())),
    Bind((i) => HomeRepositoryImpl.instance),
    Bind((i) => HomeStore()),
    Bind((i) => EventStore()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(AppRoutes.root, child: (context, args) => SplashWidget()),
    ModuleRoute(
      AppRoutes.home,
      module: HomeModule(),
      guards: [],
    ),
     ModuleRoute(
      AppRoutes.auth,
      module: AuthModule(),
      guards: [],
    ),
  ];
}
