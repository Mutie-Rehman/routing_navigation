import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  // static const String id = "screen_three";
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Screen Three"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.red),
              child: const Center(
                child: Text(
                  "Screen 3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, RouteName.screenTwo);
                  Navigator.pop(context);
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: const Center(
                    child: Text(
                      "Screen 2",
                      style: TextStyle(color: Colors.white),
                    ),
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
