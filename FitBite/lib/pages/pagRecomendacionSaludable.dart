import 'package:flutter/material.dart';
//import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capture App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CaptureScreen(),
    );
  }
}

class CaptureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
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
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Recomendación de comidas saludables',
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
                  'Captura una foto de una fruta o verduras y obtén una recomendación de comida saludable. ¡Come de manera inteligente y saludable con FitBite!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      'assets/img/recomendacion_saludable.jpg',
                      width: 300.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        /*var status = await Permission.camera.request();

                        if (status.isGranted) {
                          // Permiso concedido, puedes acceder a la cámara y capturar la imagen
                        } else {
                          // Permiso denegado, muestra un mensaje o realiza alguna acción adicional
                        }*/
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0CA5B0),
                      ),
                      child: Text(
                        'Tomar foto',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
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
                icon: Icon(Icons.home, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
                onPressed: () {
                  // Acción para el ícono de casa
                },
              ),
              IconButton(
                icon: Icon(Icons.camera_alt, size: 27.0, color: Color(0XFF0CA5B0)),
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
      ),
    );
  }
}

