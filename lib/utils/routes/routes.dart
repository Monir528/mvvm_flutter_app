
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/routes/routes_name.dart';
import 'package:mvvm_project/view/login_screen.dart';

import '../../view/home_screen.dart';

class Routes {

  static Route<dynamic> generateRoutes(RouteSettings settings) {

    switch(settings.name){

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
      default: return MaterialPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text("There is no route found"),
          ),
        );
      });

    }

  }

}