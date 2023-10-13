import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoesapp/widgets/mytext.dart';
import 'package:shoesapp/widgets/viewcard.dart';

class maincard extends StatelessWidget {
  const maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
      child: SizedBox(
        height: 260,
        width: double.infinity,
        child: Card(
          elevation: 20,
          semanticContainer: true,
          borderOnForeground: true,
          surfaceTintColor: Colors.white,
          shadowColor: const Color.fromARGB(255, 145, 157, 224),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.indigo.shade700)),
          color: const Color.fromARGB(255, 30, 39, 107),
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => viewcard(
                      imag: "assets/cover2.png",
                    ),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dynamic Fit",
                        style: GoogleFonts.rubik(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 22)),
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 28,
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/Dynamic Fit.png",
                    width: 900,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: const Alignment(1, 0.8),
                    child: MyText(
                      text: "30% Off",
                      fsize: 25,
                      c: Colors.white,
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
