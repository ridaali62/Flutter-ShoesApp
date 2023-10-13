import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';
import 'package:shoesapp/screens/mainscr.dart';

import '../widgets/mytext.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
                  "assets/screen1.png",
                ),
                colorFilter:
                    ColorFilter.mode(Colors.transparent, BlendMode.srcATop),
                alignment: Alignment(-.0, -.2),
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
                          text: "Get The \nBest Out \nOf You ",
                          fsize: 50,
                        )) // Row(
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 250),
                child: Container(
                  child: MyText(text: "100%", fsize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const HomePage())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          Text("Continue",
                              style: GoogleFonts.rubik(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600))),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
