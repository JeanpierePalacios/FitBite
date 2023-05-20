import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Inicia sesión con',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: MyColors.textColor,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Lógica para el inicio de sesión con Google
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/logo/google_logo.png', // Ruta de la imagen del logo de Google
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Lógica para el inicio de sesión con Facebook
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/logo/facebook_logo.png', // Ruta de la imagen del logo de Facebook
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}