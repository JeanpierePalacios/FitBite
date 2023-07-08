import 'package:fitbite/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}): super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();

}

class _RegisterFormState extends State<RegisterForm> {
  // Variables para almacenar los valores de los campos de texto
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _birthdateController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    // Limpia los controladores de texto cuando el widget se desmonta
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    _birthdateController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _inputEmail(),
          _inputPassword(),
          _inputRepeatPassword(),
          _inputBirthdate(),
          _inputPhoneNumber(),
          _inputButton()
        ],
      ),
    );
  }

  Container _inputEmail() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: MyColors.color2),
        color: MyColors.background0,
        boxShadow: [
          BoxShadow(
            color: MyColors.color0.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 25,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: TextFormField(
        controller: _emailController, // Asigna el controlador de texto
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          labelText: 'Correo electrónico',
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12,
          color: MyColors.textColor,
        ),
      ),
    );
  }

  Container _inputPassword() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: MyColors.color2),
        color: MyColors.background0,
        boxShadow: [
          BoxShadow(
            color: MyColors.color0.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 25,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 45),
      margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 9),
      child: TextFormField(
        controller: _passwordController,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: const InputDecoration(
          labelText: 'Contraseña',
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12,
          color: MyColors.textColor,
        ),
      ),
    );
  }

  Container _inputRepeatPassword() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: MyColors.color2),
        color: MyColors.background0,
        boxShadow: [
          BoxShadow(
            color: MyColors.color0.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 25,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 45),
      margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 9),
      child: TextFormField(
        controller: _repeatPasswordController,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: const InputDecoration(
          labelText: 'Confirmar Contraseña',
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12,
          color: MyColors.textColor,
        ),
      ),
    );
  }

  Container _inputBirthdate() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: MyColors.color2),
        color: MyColors.background0,
        boxShadow: [
          BoxShadow(
            color: MyColors.color0.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 25,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: TextFormField(
        controller: _birthdateController, // Asigna el controlador de texto
        keyboardType: TextInputType.datetime,
        decoration: const InputDecoration(
          labelText: 'Fecha de nacimiento',
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12,
          color: MyColors.textColor,
        ),
      ),
    );
  }

  Container _inputPhoneNumber() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: MyColors.color2),
        color: MyColors.background0,
        boxShadow: [
          BoxShadow(
            color: MyColors.color0.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 25,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: TextFormField(
        controller: _phoneNumberController, // Asigna el controlador de texto
        keyboardType: TextInputType.datetime,
        decoration: const InputDecoration(
          labelText: 'Celular/Teléfono',
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 12,
          color: MyColors.textColor,
        ),
      ),
    );
  }

  Container _inputButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: ElevatedButton(
        onPressed: () {
          //registerUser();
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
            'Crear cuenta',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
