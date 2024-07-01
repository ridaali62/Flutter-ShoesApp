import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoesapp/screens/Splashscreen2.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Splashscreen2())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: maincolour,
        body: Container(
          foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ts 1.png"), fit: BoxFit.fill)),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/ts 2.png"),
                  alignment: Alignment(-.0, -.23))),
          child: const Center(
              child: Text(
            "Shoetique",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 42.75,
                color: Colors.white,
                letterSpacing: 0.4),
          )),
        ));
  }
}
