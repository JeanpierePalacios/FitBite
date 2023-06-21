import 'package:fitbite/pages/pagHome.dart';
import 'package:fitbite/pages/pagResultadoClasificacion.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

String? imagePath;

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
  Future<void> navigateToResultadoClasificacion(BuildContext context, String imagePath) async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultadoClasificacionScreen(
            imagePath: imagePath,
          ),
        ),
      );
    } else {
      // Permiso denegado, muestra un mensaje o realiza alguna acción adicional
    }
  }

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
                    child: GestureDetector(
                      onTap: () async {
                        final picker = ImagePicker();
                        final pickedFile = await picker.getImage(source: ImageSource.camera);

                        if (pickedFile != null) {
                          imagePath = pickedFile.path;
                          navigateToResultadoClasificacion(context, imagePath!);
                        } else {
                          // Manejo de error si no se capturó una imagen
                        }
                      },
                      child: Container(
                        color: Color(0xFF0CA5B0),
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                        child: Text(
                          'Tomar foto',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
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
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0), // padding para 'bottomNavigationBar' con 'body'
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Icon(Icons.home, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
                ),
                GestureDetector(
                  onTap: null,
                  child: Icon(Icons.camera_alt, size: 27.0, color: Color(0XFF0CA5B0)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        // Aquí puedes definir la pantalla a la que deseas navegar
                        // mientras vas completando su implementación
                        return HomeScreen();
                      }),
                    );
                  },
                  child: Icon(Icons.person, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
