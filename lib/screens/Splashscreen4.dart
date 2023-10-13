import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoesapp/screens/Screen1.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';

import '../widgets/mytext.dart';

class Splashscreen4 extends StatefulWidget {
  const Splashscreen4({super.key});

  @override
  State<Splashscreen4> createState() => _Splashscreen4State();
}

class _Splashscreen4State extends State<Splashscreen4> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Screen1())));
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
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1412181542/photo/green-grass-texture.webp?b=1&s=170667a&w=0&k=20&c=0NiZSmfZNgf37f8KlmgRB17IM68axXWKQqQUypEWy-M=",
                    scale: BorderSide.strokeAlignOutside),
                fit: BoxFit.scaleDown,
                alignment: Alignment.bottomCenter,
                colorFilter:
                    ColorFilter.mode(Colors.transparent, BlendMode.srcATop))),
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
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: MyText(
                          text: "Ball Out \nWith Full \nConfidence ",
                          fsize: 50,
                        )) // Row(
                  ],
                ),
              ),
              Container(
                // foregroundDecoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/cover4.png"),fit: BoxFit.fill,alignment: Alignment.topRightRight,colorFilter:ColorFilter.mode(Colors.yellowAccent.withOpacity(0.13), BlendMode.srcIn))),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/cover4.png"),
                        fit: BoxFit.contain,
                        alignment: Alignment.centerRight,
                        colorFilter: ColorFilter.mode(
                            Colors.transparent, BlendMode.srcATop))),
                height: 450,
                width: double.infinity,
                child: const Image(
                    image: AssetImage("assets/ball.png"),
                    alignment: Alignment.bottomLeft),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
