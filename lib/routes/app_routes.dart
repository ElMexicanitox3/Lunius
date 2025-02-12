import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const login = 'login';


  static Map<String, Widget Function(BuildContext)> getRoutes (){
    
    Map<String, Widget Function(BuildContext)> routes = {};

    routes.addAll({

      login: (context) => LoginScreen(),
    
    });

    return routes;
  }
}