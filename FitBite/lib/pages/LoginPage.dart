import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:fitbite/components/LoginPage/login_form.dart';

import '../components/LoginPage/login_register.dart';
import '../components/LoginPage/login_social_redes.dart';

import '../config/connection.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: MyColors.background0,

      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(100.0),
                child: Text('Login',
                  style: TextStyle(color: MyColors.color1,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 65,
                    letterSpacing: 2,
                  ),
                ),
              ),

              //Login form
              LoginForm(),

              //Login social redes
              SocialLoginButtons(), // Agrega el componente SocialLoginButtons

              //Option register
              SignupContainer(),

            ],
          ),
        ),
      ),
    );
  }
}