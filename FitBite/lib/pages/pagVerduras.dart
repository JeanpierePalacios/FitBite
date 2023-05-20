import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verduras App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VerdurasScreen(),
    );
  }
}

class VerdurasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 8.0),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Verduras',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0CA5B0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50.0),
              Text(
                'Las verduras son un tipo de alimento de origen vegetal, es decir, un tipo de planta comestible, cuyo rasgo característico tiende a ser la presencia del color verde, en sus tallos, hojas o inflorescencias.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 5.0),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/img/pantallaVerduras.jpg', // Reemplaza con la ruta de tu imagen
                  width: 250.0,
                  height: 250.0,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
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
              icon: Icon(Icons.camera_alt, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              onPressed: () {
                // Acción para el ícono de cámara
              },
            ),
            IconButton(
              icon: Icon(Icons.person, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
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
