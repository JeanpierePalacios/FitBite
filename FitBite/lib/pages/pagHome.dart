import 'package:fitbite/pages/pagFrutas.dart';
import 'package:fitbite/pages/pagVerduras.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double imageWidth = screenWidth * 0.8; // 80% del ancho de la pantalla

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 0.0),
              Center(
                child: Image.asset(
                  'assets/img/logo_fitbite.JPG',
                  width: 200.0,
                  height: 200.0,
                ),
              ),
              SizedBox(height: 0.0),
              GestureDetector(
                onTap: () {
                  // Acción al hacer clic en el contenedor
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FrutasScreen()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Opacity(
                    opacity: 0.75,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      height: 200.0,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Stack(
                        children: [
                          FractionallySizedBox(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Image.asset(
                              'assets/img/btnFrutas.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Frutas',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  // Acción al hacer clic en el contenedor
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerdurasScreen()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Opacity(
                    opacity: 0.75,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      height: 200.0,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Stack(
                        children: [
                          FractionallySizedBox(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Image.asset(
                              'assets/img/btnVerduras.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Verduras',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0), // Espacio entre la última imagen y el borde inferior
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

