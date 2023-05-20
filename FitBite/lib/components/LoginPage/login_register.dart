import 'package:fitbite/pages/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class SignupContainer extends StatelessWidget {
  const SignupContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '¿No tienes cuenta? ',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14,
              color: MyColors.textColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              );
            },
            child: Text(
              'Regístrate',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: MyColors.color1,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}