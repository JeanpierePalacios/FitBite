import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}): super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _inputEmail(),
          const SizedBox(height: 18),
          _inputPassword(),
        ],
      ),
    );
  }

  Container _inputEmail() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: MyColors.color2)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 35),
        margin: const EdgeInsets.symmetric(horizontal: 35),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Correo electrónico',
            border: InputBorder.none,
          ),
          style: const TextStyle(
            fontFamily: 'OpenSans',

          ),
        ),
      );
  }

  Container _inputPassword() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: MyColors.color2)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 35),
      margin: const EdgeInsets.symmetric(horizontal: 35),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'OpenSans',

        ),
      ),
    );
  }
  
}

