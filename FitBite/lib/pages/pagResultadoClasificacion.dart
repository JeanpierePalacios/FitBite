import 'package:flutter/material.dart';
import 'package:fitbite/pages/pagResultadoComidas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resultado Clasificacion App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResultadoClasificacionScreen(),
    );
  }
}

class ResultadoClasificacionScreen extends StatelessWidget {
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
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente los elementos
            children: [
              SizedBox(height: 25.0),
              Text(
                'Resultado...',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0CA5B0),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0),
              Image.asset(
                'assets/img/img_arandano.jpg',
                fit: BoxFit.contain,
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.0),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Se identificó como: ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Arándano',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResultadoComidasScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0CA5B0), // Color de fondo
                        onPrimary: Colors.white, // Color de fuente
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Border-radius de 20.0
                        ),
                      ),
                      child: Text(
                        'Explorar comidas',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ), // Texto del botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200.0), // Añade espacio adicional para que haya suficiente altura para el desplazamiento vertical
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
