import 'package:fitbite/pages/SavedMeals.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class ConfigurationButtons extends StatelessWidget {
  const ConfigurationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Lógica para manejar el evento de presionar el botón "Configuración"
              // Aquí puedes agregar tu lógica personalizada.
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                'Información de la cuenta',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Espacio vertical entre los botones
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SavedMealsPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Text(
                'Historial de resultados',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Espacio vertical entre los botones
          ElevatedButton(
            onPressed: () {
              // Lógica para manejar el evento de presionar el botón "Cerrar Sesión"
              // Aquí puedes agregar tu lógica personalizada.
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
              child: Text(
                'Redactar opinión sobre la App',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Espacio vertical entre los botones
          ElevatedButton(
            onPressed: () {
              // Lógica para manejar el evento de presionar el botón "Cerrar Sesión"
              // Aquí puedes agregar tu lógica personalizada.
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
              child: Text(
                'Términos y condiciones',
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
    );
  }
}

