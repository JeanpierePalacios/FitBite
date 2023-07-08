import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:fitbite/pages/LoginPage.dart';
import 'package:fitbite/components/pantalla_carga.dart';

class DatosUser extends StatelessWidget {
  const DatosUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 40), // Añade un espaciado horizontal
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            _buildInfoRow('Nombre del usuario', 'Mauricio Álvarez'),
            _buildInfoRow('Método de ingreso a FitBite', 'Cuenta de Google'),
            _buildInfoRow('Correo', 'maualv230@gmail.com'),
            _buildInfoRow('Contraseña', '****************'),
            const SizedBox(
                height: 20), // Ajusta el valor del SizedBox según sea necesario
            Center(
                child: _buildButton(context,
                    'Eliminar')), // Envuelve el botón en un Center widget
            const SizedBox(height: 45),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.color1,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 16,
              color: MyColors.textColor,
            ),
          ),
        ],
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            '¿Está seguro de eliminar su historial?',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.color1,
            ),
          ),
          content: Text(
            'Se eliminará su historial, por lo que ya no podrá visualizar los resultados obtenidos con FitBite.',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 16,
              color: MyColors.textColor,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PantallaCarga(nextPage: LoginPage()),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: MyColors.color1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Aceptar',
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
        );
      },
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () {
        _showConfirmationDialog(context);
      },
      style: ElevatedButton.styleFrom(
        primary: MyColors.color1, // Color de fondo del botón
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              30), // Ajusta el valor para controlar la forma del botón
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          'Eliminar',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
