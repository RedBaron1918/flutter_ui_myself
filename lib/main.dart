import 'package:clothe_store/screens/confirm_page.dart';
import 'package:clothe_store/screens/home.dart';
import 'package:clothe_store/screens/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.deepOrange,
      useMaterial3: true,
    ),
    initialRoute: '/',
    routes: {
      "/": (context) => const ConfirmPage(),
      "/home": (context) => HomeScreen(),
      "/product": (context) => ProductScreen(),
    },
  ));
}
