import 'package:flutter/material.dart';
import 'package:routing_navigation/home_screen.dart';
import 'package:routing_navigation/screen_three.dart';
import 'package:routing_navigation/screen_two.dart';
import 'package:routing_navigation/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => const ScreenThree());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Text("No route defined"),
          );
        });
    }
  }
}
