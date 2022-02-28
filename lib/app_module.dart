import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:myfootball/modules/splash/splash_widget.dart';
import 'package:myfootball/services/api_service.dart';

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
    Bind((i) => APIClient()),
    Bind((i) => APIService.create(i.get<APIClient>())),
    Bind((i) => HomeRepositoryImpl.instance),
    Bind((i) => HomeStore()),
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
  ];
}
