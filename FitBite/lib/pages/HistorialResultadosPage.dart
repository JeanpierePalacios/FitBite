import 'package:fitbite/pages/ConfigurationPage.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

import '../components/SavedMealsPage/filter_saved_meals.dart';

class HistorialResultados extends StatelessWidget {
  const HistorialResultados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background0,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfigurationPage()),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: MyColors.color1,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(60.0),
                    child: Text(
                      'Historial de Resultados',
                      style: TextStyle(
                        color: MyColors.color1,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 65,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 27.0, color: Color(0XFF0CA5B0)),
              onPressed: () {
                // Acción para el ícono de casa
              },
            ),
            IconButton(
              icon: Icon(Icons.camera_alt,
                  size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              onPressed: () {
                // Acción para el ícono de cámara
              },
            ),
            IconButton(
              icon: Icon(Icons.person,
                  size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              onPressed: () {
                // Acción para el ícono de usuario
              },
            ),
          ],
        ),
      ),
    );
  }
}
