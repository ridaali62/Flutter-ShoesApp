import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/cart/cart_provider.dart';
import 'package:shoesapp/save/save_provider.dart';
import 'package:shoesapp/screens/Splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: ((context) => CartProvider())),
      ChangeNotifierProvider(create: ((context) => SaveProvider()))
    ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: Splashscreen(),),);
  
  }
}
