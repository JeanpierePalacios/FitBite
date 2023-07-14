import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fitbite/pages/LoginPage.dart';
import 'package:fitbite/components/my_colors.dart';

class PantallaCarga2 extends StatefulWidget {
  final Widget nextPage;

  const PantallaCarga2({Key? key, required this.nextPage}) : super(key: key);

  @override
  _PantallaCarga2State createState() => _PantallaCarga2State();
}

class _PantallaCarga2State extends State<PantallaCarga2> {
  @override
  void initState() {
    super.initState();
    _cargarSiguientePagina();
  }

  void _cargarSiguientePagina() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.nextPage),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.nextPage, // Página de fondo
        Container(
          color: Colors.black.withOpacity(0.5), // Fondo glass transparente
          child: Center(
            child: CircularProgressIndicator(), // Esfera de carga
          ),
        ),
      ],
    );
  }
}
