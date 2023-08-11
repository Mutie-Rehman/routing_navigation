import 'package:flutter/material.dart';
import 'package:routing_navigation/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  // static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Screen One"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenTwo, arguments: {
                  'Node': 'JS module',
                  'Flutter': 'Good for making apps'
                }
                    // arguments: {'name': 'Mutie ur Rehman', 'age': 21}
                    );
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ScreenTwo(
                //               name: 'Screen Two',
                //             )));
              },
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.brown),
                child: const Center(
                  child: Text(
                    "Screen 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
