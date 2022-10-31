import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/home/stores/leagues_store.dart';
import 'package:myfootball/modules/home/stores/news_store.dart';
import 'package:myfootball/modules/home/stores/teams_store.dart';
import 'package:myfootball/modules/home/widget/home_widget.dart';
import 'package:myfootball/modules/player/player_module.dart';

import 'home_route.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LeaguesStore()),
    Bind.lazySingleton((i) => TeamsStore()),
    Bind.lazySingleton((i) => NewsStore()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(HomeRoute.root, child: (_, __) => HomeWidget()),
    ModuleRoute(
      HomeRoute.player,
      module: PlayerModule(),
      guards: [],
    ),
  ];
}
