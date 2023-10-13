import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/screens/utils/grid.dart';
import 'package:shoesapp/widgets/Maincard.dart';
import 'package:shoesapp/widgets/mytext.dart';

import '../widgets/myapp_clr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: maincolour,
          body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: const AssetImage("assets/bg2.png"),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.13), BlendMode.dstATop))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: "Shoetique",
                          c: Colors.white,
                          fsize: 25,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(207, 12, 35, 160),
                                      Color.fromARGB(207, 18, 45, 199),
                                      Colors.white
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    tileMode: TileMode.mirror),
                                color: const Color.fromARGB(255, 88, 110, 233),
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 30,
                                )))
                      ],
                    ),
                  ),
                  const maincard(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 1),
                          color: const Color.fromARGB(255, 34, 47, 148),
                          borderRadius: BorderRadius.circular(12)),
                      child: TabBar(
                          indicatorColor: Colors.indigo.shade300,
                          indicator: BoxDecoration(
                              color: const Color.fromARGB(255, 88, 110, 233),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 5, 7, 12))),
                          indicatorPadding: const EdgeInsets.all(3),
                          labelStyle: GoogleFonts.rubik(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          isScrollable: true,
                          tabs: const [
                            Tab(
                              text: "All",
                            ),
                            Tab(
                              text: "Boot",
                            ),
                            Tab(
                              text: "Canvas",
                            ),
                            Tab(
                              text: "Outdoor",
                            ),
                          ]),
                    ),
                  ),
                  const Expanded(
                    child: TabBarView(children: [
                      Grid(),
                      Grid(),
                      Grid(),
                      Grid(),
                    ]),
                  )
                ],
              ))),
    );
  }
}
