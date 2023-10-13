import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/cart/cart_provider.dart';
import 'package:shoesapp/cart/cart_screen.dart';
import 'package:shoesapp/screens/home_screen.dart';
import 'package:shoesapp/screens/success.dart';
import 'package:shoesapp/screens/utils/grid.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';
import 'package:shoesapp/widgets/mytext.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class descripcard extends StatefulWidget {
  descripcard(
      {super.key,
      required this.imag1,
      required this.imag2,
      required this.imag3,
      this.maintext,
      this.text,
      required this.price,
      required this.position});
  final String imag1;
  final String imag2;
  final String imag3;
  final maintext;
  final text;
  final price;
  int position;
  @override
  State<descripcard> createState() => _descripcardState();
}

final _controller = PageController();

class _descripcardState extends State<descripcard> {
  int selectedindex = 0;
  void selectedvalue(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List _pages = [
    Center(child: MyText(text: "Rida Ali")),
    const HomeScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.white,
                backgroundColor: Colors.indigo.shade500,
                onTap: selectedvalue,
                currentIndex: selectedindex,
                items: [
                  const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.favorite,
                      ),
                      label: ""),
                  const BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: ""),
                  BottomNavigationBarItem(
                    icon: Badge(
                      smallSize: 15,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      alignment: const Alignment(2.5, -1),
                      label: Consumer<CartProvider>(
                        builder: (context, value, child) {
                          return Text(value.Counter().toString());
                        },
                      ),
                      child: const Icon(Icons.shopping_cart),
                    ),
                    label: "",
                  )
                ]),
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, right: 15),
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
                  ),
                  Column(
                    children: [
                      Stack(
                        // alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  MyText(
                                    text: widget.maintext ?? "Dynamic Fit",
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: SizedBox(
                              height: 370,
                              child: PageView(
                                controller: _controller,
                                children: [
                                  SizedBox(
                                    height: 420,
                                    child: Image.asset(
                                      widget.imag1,
                                      fit: BoxFit.fitHeight,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 420,
                                    child: Image.asset(
                                      widget.imag2,
                                      fit: BoxFit.fitHeight,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 300,
                                    child: Image.asset(
                                      widget.imag3,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment(0, 0.4),
                        child: SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect: SwapEffect(
                              activeDotColor: Colors.white,
                              dotColor: Colors.white.withOpacity(0.5),
                              dotHeight: 10,
                              dotWidth: 10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Row(
                      children: [
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
                                  top: Radius.circular(20),
                                ),
                                color: Color.fromARGB(255, 57, 73, 192),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    MyText(
                                      text:
                                          (widget.text ?? 'Nike Dynamic Fit') +
                                              '      \$' +
                                              widget.price,
                                      c: Colors.white,
                                      fsize: 18,
                                      w: FontWeight.w500,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    MyText(
                                        text:
                                            " Sneakers Shoe Air Jordan, men shoes,",
                                        c: const Color.fromRGBO(
                                            153, 169, 187, 1),
                                        fsize: 15,
                                        w: FontWeight.normal),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    MyText(
                                        text:
                                            "Outdoor Shoe , lemon and black combo ",
                                        c: const Color.fromRGBO(
                                            153, 169, 187, 1),
                                        fsize: 15,
                                        w: FontWeight.normal),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    MyText(
                                        text:
                                            "Stripes patternmore translucent pouches of ",
                                        c: const Color.fromRGBO(
                                            153, 169, 187, 1),
                                        fsize: 15,
                                        w: FontWeight.normal),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    MyText(
                                        text:
                                            "Pressurized gas embedded in the midsole ",
                                        c: const Color.fromRGBO(
                                            153, 169, 187, 1),
                                        fsize: 15,
                                        w: FontWeight.normal),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    MyText(
                                        text:
                                            "And visible from the outside of the shoe. ",
                                        c: const Color.fromRGBO(
                                            153, 169, 187, 1),
                                        fsize: 15,
                                        w: FontWeight.normal),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    MyText(
                                        text:
                                            "Referred to as 'Air units' or 'airbags'. ",
                                        c: const Color.fromRGBO(
                                            153, 169, 187, 1),
                                        fsize: 15,
                                        w: FontWeight.normal),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5))),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Grid(),
                                                  ));
                                            },
                                            child: Center(
                                              child: MyText(
                                                text: "Save",
                                                c: Colors.white,
                                                fsize: 20,
                                                w: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 40,
                                          width: 150,
                                          decoration: const BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),
                                          child: InkWell(
                                            highlightColor: Colors.black,
                                            onTap: () {
                                              Provider.of<CartProvider>(context,
                                                      listen: false)
                                                  .additem(widget.position);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        successful(),
                                                  ));
                                            },
                                            child: Center(
                                              child: MyText(
                                                text: "Add To Cart",
                                                c: Colors.white,
                                                fsize: 20,
                                                w: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
