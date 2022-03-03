import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/auth/auth_route.dart';

import 'widget/pin_widget.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(AuthRoute.root, child: (_, __) => PinWidget()),
   
  ];
}
