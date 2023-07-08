import 'package:fitbite/pages/HistorialResultadosPage.dart';
import 'package:fitbite/pages/ConfigurationPage.dart';
import 'package:fitbite/pages/OpinionesPage.dart';
import 'package:fitbite/pages/TerminosCondPage.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:fitbite/pages/InfoCuentaPage.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfoCuentaPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 46, vertical: 10),
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
                MaterialPageRoute(builder: (context) => HistorialResultados()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 52, vertical: 10),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OpinionesPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    30), // Ajusta el valor para controlar la forma del botón
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TerminosCondPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.color1, // Color de fondo del botón
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    30), // Ajusta el valor para controlar la forma del botón
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 48, vertical: 10),
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
