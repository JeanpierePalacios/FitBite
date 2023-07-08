import 'package:flutter/material.dart';
import 'package:fitbite/pages/LoginPage.dart';
import 'package:fitbite/components/pantalla_carga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitBite',
      debugShowCheckedModeBanner: false,
      home: PantallaCarga(nextPage: LoginPage()),
    );
  }
}
