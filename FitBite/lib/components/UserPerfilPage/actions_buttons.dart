import 'package:fitbite/pages/ConfigurationPage.dart';
import 'package:fitbite/pages/SavedMeals.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConfigurationPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.grey, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                'Configuración',
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
                'Comidas Guardadas',
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
              primary: Colors.red, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
              child: Text(
                'Cerrar Sesión',
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

