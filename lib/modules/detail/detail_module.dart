import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/modules/detail/detail_routes.dart';
import 'package:myfootball/modules/detail/repositories/detail_repo_impl.dart';
import 'package:myfootball/modules/detail/store/detail_store.dart';

import 'widget/detail_widget.dart';

class DetailModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailStore()),
    Bind.lazySingleton((i) => DetailRepositoryImpl.instance),
    // Bind.lazySingleton((i) => NewsStore()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      DetailRoutes.root,
      child: (_, arg) => DetailWidget(
        id: arg.data[0],
        season: arg.data[1],
      ),
    ),
  ];
}
