import 'package:flutter/material.dart';
import 'package:shoesapp/widgets/descripcard.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';
import 'package:shoesapp/widgets/mytext.dart';

class viewcard extends StatefulWidget {
  viewcard({super.key, required this.imag});
  String imag;
  @override
  State<viewcard> createState() => _viewcardState();
}

class _viewcardState extends State<viewcard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
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
                          highlightColor: Colors.black,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ))),
                  const SizedBox(
                    width: 60,
                  ),
                  MyText(
                    text: "Dynamic Fit",
                    c: Colors.white,
                    fsize: 25,
                    w: FontWeight.w500,
                  ),
                  const Icon(
                    Icons.arrow_right,
                    size: 40,
                    color: Color.fromARGB(255, 11, 124, 217),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Image(
                image: AssetImage(widget.imag),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 3.0,
                      ),
                    ],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: Color.fromARGB(255, 30, 39, 107),
                  ),
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => descripcard(
                                  imag1: "assets/dynamic1.png",
                                  imag2: "assets/dynamic2.png",
                                  imag3: "assets/dynamic3.png",
                                  price: '60',
                                  position: 2,
                                ),
                              ));
                        },
                        child: Center(
                          child: MyText(
                            text: "View",
                            c: Colors.white,
                            fsize: 20,
                            w: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
