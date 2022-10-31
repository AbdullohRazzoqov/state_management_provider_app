import 'package:flutter/material.dart';
import 'package:state_management_provider_app/view/home_page.dart';

class MyRouter {
  static generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => MyHomePage());
    }
  }
}
