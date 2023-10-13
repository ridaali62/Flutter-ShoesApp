import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/cart/cart_provider.dart';
import 'package:shoesapp/screens/Screen1.dart';
import 'package:shoesapp/screens/Splashscreeen3.dart';
import 'package:shoesapp/screens/Splashscreen.dart';
import 'package:shoesapp/screens/Splashscreen2.dart';
import 'package:shoesapp/screens/Splashscreen4.dart';
import 'package:shoesapp/widgets/descripcard.dart';
import 'package:shoesapp/widgets/mytext.dart';
import 'package:shoesapp/widgets/myapp_clr.dart' as main;
import 'package:shoesapp/widgets/viewcard.dart';

import 'myapp_clr.dart';

class mycard extends StatefulWidget {
  mycard(
      {super.key,
      required this.imag,
      required this.Price,
      required this.text,
      this.vector,
      required this.type,
      required this.position});
  final String imag;
  String? vector;
  final Price;
  String text;
  String type;
  int position;

  @override
  State<mycard> createState() => _mycardState();
}

class _mycardState extends State<mycard> {
  List pages = [
    descripcard(
      imag1: "assets/airmax1.png",
      imag2: "assets/airmax1.2.png",
      imag3: "assets/airmax1.3.png",
      price: Product[0][2],
      text: Product[0][1],
      maintext: "Airmax",
      position: 0,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[1][2],
      text: Product[1][1],
      maintext: "Air Force 1",
      position: 1,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[2][2],
      text: Product[2][1],
      maintext: "Air Force 1",
      position: 2,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[3][2],
      text: Product[3][1],
      maintext: "Air Force 1",
      position: 3,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[4][2],
      text: Product[4][1],
      maintext: "Air Force 1",
      position: 4,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[5][2],
      text: Product[5][1],
      maintext: "Air Force 1",
      position: 5,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[6][2],
      text: Product[6][1],
      maintext: "Air Force 1",
      position: 6,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[7][2],
      text: Product[7][1],
      maintext: "Air Force 1",
      position: 7,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[8][2],
      text: Product[8][1],
      maintext: "Air Force 1",
      position: 8,
    ),
    descripcard(
      imag1: "assets/Mercurialvapor1.png",
      imag2: "assets/Mercurialvapor2.png",
      imag3: "assets/Mercurialvapor3.png",
      price: Product[9][2],
      text: Product[9][1],
      maintext: "Air Force 1",
      position: 9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 350,
      child: Expanded(
        child: Card(
          elevation: 15,
          shadowColor: Colors.white70,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.indigo.shade700)),
          color: const Color.fromARGB(255, 30, 39, 107),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pages[widget.position],
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        widget.vector ?? "assets/Vector 1.png",
                        fit: BoxFit.fitWidth,
                        width: 45,
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 0),
                    child: Image(
                      image: AssetImage(widget.imag),
                      fit: BoxFit.fitWidth,
                      height: 140,
                      width: 200,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-1, 0.75),
                    child: Text(
                      widget.text,
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.type,
                          style: GoogleFonts.rubik(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        MyText(
                          text: "${widget.Price}\$",
                          fsize: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
