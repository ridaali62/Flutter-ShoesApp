import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/cart/cart_screen.dart';
import 'package:shoesapp/save/save_screen.dart';
import 'package:shoesapp/screens/home_screen.dart';
import 'package:shoesapp/widgets/myapp_clr.dart';
import 'package:shoesapp/cart/cart_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  void selectedvalue(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List _pages = [
    const SaveScreen(),
    const HomeScreen(),
    const CartScreen(),
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
              const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
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
        body: _pages[selectedindex],
      ),
    );
  }
}
