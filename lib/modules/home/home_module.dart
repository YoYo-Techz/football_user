import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/home/widget/home_widget.dart';
import 'package:myfootball/modules/player/player_module.dart';

import 'home_route.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

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