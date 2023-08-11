// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:routing_navigation/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  // static const String id = "screen_two";
  // final String name;
  dynamic data;
  ScreenTwo({
    super.key,
    required this.data,

    // required this.name,
  });

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.data['Flutter']),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenThree);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ScreenThree()));
              },
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.green),
                child: const Center(
                  child: Text(
                    "Screen 2",
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
