import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/player/player_route.dart';
import 'widget/player_widget.dart';

class PlayerModule extends Module {
  @override
  final List<Bind> binds = [
    //
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(PlayerRoute.root,
        child: (_, arg) => PlayerWidget(
              link: arg.data,
            )),
  ];
}
