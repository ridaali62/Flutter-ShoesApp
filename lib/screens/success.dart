import 'package:flutter/material.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';
import 'package:shoesapp/widgets/mytext.dart';

class successful extends StatelessWidget {
  const successful({super.key});

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
        foregroundDecoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/success.png"),
                alignment: Alignment(0, -0.4))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
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
          ),
          Center(
            child: MyText(
              text: "SUCCESS",
              c: Colors.white,
              fsize: 40,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 150,
            width: double.infinity,
            color: Color.fromARGB(255, 30, 39, 107),
          )
        ]),
      ),
    ));
  }
}
