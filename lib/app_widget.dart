import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/theme/appbar_theme.dart';
import 'package:myfootball/theme/card_theme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp.router(
      title: 'CM sport',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
          primarySwatch: Colors.green,
          appBarTheme: appbarTheme,
          // cardTheme: cardTheme
          ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
