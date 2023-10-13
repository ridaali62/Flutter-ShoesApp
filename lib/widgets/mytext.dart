import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  final text;
  double? fsize;
  Color? c;
  FontWeight? w;

  MyText({super.key, required this.text, this.fsize, this.c, this.w});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.rubik(
            textStyle: TextStyle(
                color: c ?? const Color.fromRGBO(95, 229, 247, 100),
                fontSize: fsize,
                fontWeight: w ?? FontWeight.w800,
                letterSpacing: 0.41,
                shadows: List.filled(
                    10,
                    const Shadow(
                        color: Color.fromRGBO(95, 229, 247, 100),
                        blurRadius: 1)))));
  }
}
