import 'package:fitbite/pages/pagHome.dart';
import 'package:fitbite/pages/pagRecomendacionSaludable.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terminos y Condiciones App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TermCondScreen(),
    );
  }
}

class TermCondScreen extends StatelessWidget {
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
                  'Términos y condiciones',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0CA5B0),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 25.0),
              Text(
                '''Bienvenido a FitBite, una aplicación móvil que te permite recibir recomendaciones de comidas saludables en base a las imágenes que captures con la cámara de tu dispositivo móvil. En esta sección, puedes leer, comprender y tener al alcance cuáles son los términos y condiciones al hacer uso de FitBite:
                ''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                '1. Introducción',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '''El uso de la aplicación móvil FitBite implica la aceptación de los términos y condiciones de uso. En caso no estés de acuerdo con los términos y condiciones, le manifestamos que, por favor, no use la aplicación móvil.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '2. Propiedad Intelectual',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '''Las imágenes mostradas en FitBite no son creadas o capturadas por el equipo desarrollador de FitBite, dado que, estas son obtenidas e incorporadas a la aplicación mediante la descarga de imágenes de la web. Si uno o más licenciantes de una imagen en Internet manifiestan que se está usando una imagen de su autoría indebidamente, procederemos a retirarla y reempelzarla por otra en la aplicación. Las fotografías que el usuario capture con la cámara al hacer uso de la aplicación son de propiedad del usuario. FitBite no se atribuye la autoría de dichas fotografías.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '3. Privacidad',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '''Los datos de los usuarios de FitBite son sumamente respetados. Sus datos son compartidos únicamente con la aplicación. ''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '4. Clasificación de Imágenes',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '''FitBite usa la tecnología de Clasificación de Imágenes (Image Classification o Visual Recognition) para analizar las imágenes capturadas por su dispositivo móvil al hacer uso de nuestra aplicación móvil. Al usar FitBite, aceptas que tus imágenes sean procesadas con esta tecnología. De igual manera, debes aceptar que la aplicación pueda acceder a la cámara de tu dispositivo móvil.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '5. Comidas saludables',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '''Las recomendaciones de comidas saludables que proporciona nuestra aplicación se basan en información disponible de las recetas con distintas frutas o verduras en sitios web con reputación al respecto. El equipo de FitBite siempre está velando por que las recomendaciones ofrecidas sean las más adecuadas y que sean información de confianza.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '6. Uso de la aplicación',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '''Está determinantemente prohibido el uso no autorizado de la aplicación, incluyendo la modificación del software, la distribución y/o comercialización de la aplicación u otra actividad que viole estos términos y condiciones.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                '7. Contacto',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '''Si Ud. tiene alguna pregunta o inquietud sobre los términos y condiciones detallados en esta sección o, sobre el uso de la aplicación FitBite, no dude en contactarnos al correo electrónico siguiente: fitbitesw@gmail.com''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 25.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
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
              child: Icon(Icons.home, size: 27.0, color: Color(0XFF0CA5B0)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CaptureScreen()),
                );
              },
              child: Icon(Icons.camera_alt, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
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
    );
  }
}
