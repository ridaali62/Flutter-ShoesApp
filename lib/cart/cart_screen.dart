import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/cart/cart_provider.dart';
import 'package:shoesapp/screens/mainscr.dart';
import 'package:shoesapp/widgets/mytext.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/bg2.png"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.13), BlendMode.dstATop))),
      child: Consumer<CartProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ));
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ))),
                    const SizedBox(
                      width: 20,
                    ),
                    MyText(
                      text: "My Shopping Cart",
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
              Expanded(
                child: ListView.builder(
                    itemCount: value.cartItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          shadowColor: Colors.white,
                          color: const Color.fromARGB(207, 12, 35, 160),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 100,
                                    width: 120,
                                    child: Image.asset(
                                        value.cartItems[index].cartproduct[0]),
                                  ),
                                  Container(
                                    width: 180,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: value.cartItems[index]
                                                  .cartproduct[1] +
                                              "\n" +
                                              value.cartItems[index]
                                                  .cartproduct[2] +
                                              '\$',
                                          fsize: 20,
                                          w: FontWeight.w100,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.white70,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: IconButton(
                                                  iconSize: 15,
                                                  highlightColor: Colors.black,
                                                  onPressed: () {
                                                    return Provider.of<
                                                                CartProvider>(
                                                            context,
                                                            listen: false)
                                                        .removeitem(index);
                                                  },
                                                  icon:
                                                      const Icon(Icons.remove)),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            MyText(
                                              text: value
                                                  .cartItems[index].quantity
                                                  .toString(),
                                              w: FontWeight.w100,
                                              fsize: 25,
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Colors.white70,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: IconButton(
                                                  iconSize: 15,
                                                  highlightColor: Colors.black,
                                                  onPressed: () {
                                                    Provider.of<CartProvider>(
                                                            context,
                                                            listen: false)
                                                        .increaseQuantity(
                                                            index);
                                                  },
                                                  icon: const Icon(Icons.add)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Total Price = ${value.addTotalPrice()} \$",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}
