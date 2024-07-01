import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoesapp/screens/Splashscreeen3.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';
import 'package:shoesapp/widgets/mytext.dart';

class Splashscreen2 extends StatefulWidget {
  const Splashscreen2({super.key});

  @override
  State<Splashscreen2> createState() => _Splashscreen2State();
}

class _Splashscreen2State extends State<Splashscreen2> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Splashscreen3())));
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
                image: AssetImage("assets/cover.png"),
                alignment: Alignment(-.0, .32),
                fit: BoxFit.fitWidth,
              )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
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
                      Padding(
                        padding: const EdgeInsets.only(top: 300, left: 170),
                        child: Column(
                          children: [
                            MyText(
                              text: "100%",
                              fsize: 30,
                            ),
                            const SizedBox(
                              width: 150,
                              height: 60,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Icon(
                                  CupertinoIcons.arrow_right_square_fill,
                                  color: Color.fromRGBO(95, 229, 247, 100),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
