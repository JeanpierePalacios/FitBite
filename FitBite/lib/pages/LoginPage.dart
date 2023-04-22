import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:fitbite/components/login_form.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(60.0),
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

              //Button save

            ],
          ),
        ),
      ),
    );
  }
}