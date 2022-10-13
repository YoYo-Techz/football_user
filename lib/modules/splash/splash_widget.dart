import 'package:flutter/material.dart';
import 'package:myfootball/modules/auth/auth_module.dart';
import 'package:myfootball/modules/auth/auth_route.dart';
import 'package:myfootball/modules/home/home_module.dart';
import 'package:myfootball/modules/home/home_route.dart';
import 'package:myfootball/utils/rotue_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashWidget extends StatefulWidget {
  SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();
    // checkRoute();
     homePage();
  }

  checkRoute() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? login = prefs.getBool('login');
    print("Login $login");
    if (login == true) {
      homePage();
    } else {
      authPage();
    }
  }

  void homePage() {
    Future.delayed(Duration(seconds: 2), () {
      RouteUtils.changeRoute<HomeModule>(HomeRoute.root, isReplace: true);
    });
  }

  void authPage() {
    Future.delayed(Duration(seconds: 2), () {
      RouteUtils.changeRoute<AuthModule>(AuthRoute.root, isReplace: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/logo/icon.png",
              width: 165,
              height: 165,
            ),
          ),
        ],
      ),
    );
  }
}
