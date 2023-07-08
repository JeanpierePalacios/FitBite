import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:fitbite/pages/ConfigurationPage.dart';

class OpinionesPage extends StatelessWidget {
  const OpinionesPage({Key? key}) : super(key: key);

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Su opinión fue recibida por FitBite',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.color1,
            ),
          ),
          content: Text(
            'Gracias por opinar sobre nuestra aplicación móvil. Nos ayuda a seguir mejorando de forma constante.',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 16,
              color: MyColors.textColor,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfigurationPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: MyColors.color1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Aceptar',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () {
        _showConfirmationDialog(context);
      },
      style: ElevatedButton.styleFrom(
        primary: MyColors.color1, // Color de fondo del botón
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              30), // Ajusta el valor para controlar la forma del botón
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          'Eliminar',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

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
                      builder: (context) => ConfigurationPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
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
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(55.0),
                    child: Text(
                      'Opinión sobre la app',
                      style: TextStyle(
                        color: MyColors.color1,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Container(
                    width: 350,
                    child: Text(
                      'Al equipo de FitBite le gustaría conocer cuál es tu opinión sobre la app. Háznoslo saber en el campo de comentarios.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 18,
                        color: MyColors.textColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 200,
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Escribe tu opinión aquí...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _showConfirmationDialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: MyColors.color1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        'Enviar',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
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
