import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoesapp/screens/Splashscreen4.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';

import '../widgets/mytext.dart';

class Splashscreen3 extends StatefulWidget {
  const Splashscreen3({super.key});

  @override
  State<Splashscreen3> createState() => _Splashscreen3State();
}

class _Splashscreen3State extends State<Splashscreen3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Splashscreen4())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: maincolour,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        foregroundDecoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/bg2.png"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.13), BlendMode.dstATop))),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/cover2.png",
                ),
                colorFilter:
                    ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
                alignment: Alignment(-.0, .5),
                fit: BoxFit.fitWidth)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "Shoetique",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 27.75,
                    color: Colors.white,
                    letterSpacing: 0.4),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: MyText(
                          text: "Get What \nFits You \nBest ",
                          fsize: 50,
                        )) // Row(
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
