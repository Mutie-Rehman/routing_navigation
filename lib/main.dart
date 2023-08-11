import 'package:flutter/material.dart';
import 'package:routing_navigation/utils/routes.dart';
import 'package:routing_navigation/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation and Routing",
      theme: ThemeData(primarySwatch: Colors.blue),
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => const HomeScreen(),
      //   ScreenTwo.id: (context) => const ScreenTwo(),
      //   ScreenThree.id: (context) => const ScreenThree(),
      // },
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
