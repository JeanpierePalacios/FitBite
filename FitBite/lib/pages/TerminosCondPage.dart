import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:fitbite/pages/ConfigurationPage.dart';

class TerminosCondPage extends StatelessWidget {
  const TerminosCondPage({Key? key}) : super(key: key);

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
              child: SingleChildScrollView(
                // Agregado SingleChildScrollView
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(55.0),
                      child: Text(
                        'Términos y condiciones',
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
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Bienvenido a FitBite, una aplicación móvil que te permite recibir recomendaciones de comidas saludables basadas en las imágenes que captures con la cámara de tu dispositivo móvil.\n\nEn esta sección, puedes leer, comprender y tener al alcance cuáles son los términos y condiciones al hacer uso de FitBite.\n\nIntroducción\nEl uso de la aplicación móvil Fitbite implica la aceptación de los términos y condiciones de uso. En caso no estés de acuerdo con los términos y condiciones, le manifestamos que, por favor, no uses la aplicación móvil.\n\nPropiedad intelectual\nLas imágenes mostradas en FitBite no son creadas o capturadas por el equipo desarrollador de FitBite, dado que estas son obtenidas e incorporadas a la aplicación mediante la descarga de imágenes de la web. Si uno o más licenciantes de una imagen en Internet manifiestan que se está usando una imagen de su autoría indebidamente, procederemos a retirarla y reemplazarla por otra en la aplicación. Las fotografías que el usuario capture con la cámara al hacer uso de la aplicación son propiedad del usuario. FitBite no se atribuye la autoría de dichas fotografías.\n\nPrivacidad\nLos datos de los usuarios de FitBite son sumamente respetados. Sus datos son compartidos únicamente con la aplicación.\n\nClasificación de imágenes\nFitBite usa la tecnología de Clasificación de Imágenes (también conocida como Visual Recognition) para analizar las imágenes capturadas por su dispositivo móvil al hacer uso de nuestra aplicación móvil. Al usar FitBite, aceptas que tus imágenes sean procesadas con esta tecnología. De igual manera, aceptas que la aplicación pueda acceder a la cámara de tu dispositivo móvil.\n\nComidas saludables\nLas recomendaciones de comidas saludables que proporciona nuestra aplicación se basan en la información disponible de las recetas con distintas frutas o verduras. El equipo de FitBite siempre está velando por que las recomendaciones ofrecidas sean las más adecuadas y que sean información de confianza.\n\nUso de la aplicación\nEstá determinadamente prohibido el uso no autorizado de nuestra aplicación, incluyendo la modificación del software, la distribución y/o comercialización de la aplicación u otra actividad que viole estos términos y condiciones.\n\nContacto\nSi tienes alguna pregunta o inquietud sobre estos términos y condiciones o sobre el uso de FitBite, no dudes en contactarnos al correo electrónico siguiente: fitbitesw@gmail.com\n\nAl usar nuestra aplicación móvil, aceptas estos términos y condiciones de uso. ¡Gracias por usar FitBite!',
                        style: TextStyle(
                          color: MyColors.textColor,
                          fontFamily: 'OpenSans',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
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
