import 'package:fitbite/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:fitbite/components/pantalla_carga2.dart';
import 'package:fitbite/config/config.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  // Variables para almacenar los valores de los campos de texto
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _birthdateController = TextEditingController();

  Future<void> _selectBirthdate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      _birthdateController.text = formattedDate;
    }
  }

  Future<void> _registerUser() async {
    final nombre = _nombreController.text;
    final correo = _emailController.text;
    final password = _passwordController.text;
    final confirmarPassword = _repeatPasswordController.text;
    final fechaNacimiento = _birthdateController.text;

    if (nombre.isEmpty ||
        correo.isEmpty ||
        password.isEmpty ||
        confirmarPassword.isEmpty ||
        fechaNacimiento.isEmpty) {
      Fluttertoast.showToast(
        msg: "Por favor, complete todos los campos",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    if (password != confirmarPassword) {
      Fluttertoast.showToast(
        msg: "Las contraseñas no coinciden",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    final url = Uri.parse("${config.baseUrl}/register.php");
    final response = await http.post(url, body: {
      "nomUser": nombre,
      "correoUser": correo,
      "passUser": password,
      "confirmPassUser": confirmarPassword,
      "fechaNacimiento": fechaNacimiento,
    });

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      if (result['status'] == 'Success') {
        Fluttertoast.showToast(
          msg: "Registro exitoso",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PantallaCarga2(
              nextPage: LoginPage(),
            ),
          ),
        );
      } else {
        Fluttertoast.showToast(
          msg: "Error en el registro",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Error en el servidor",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
  }

  @override
  void dispose() {
    // Limpia los controladores de texto cuando el widget se desmonta
    _nombreController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    _birthdateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _nombreUsuario(),
          _inputEmail(),
          _inputPassword(),
          _inputRepeatPassword(),
          _inputBirthdate(),
          _inputButton(),
        ],
      ),
    );
  }

  Container _nombreUsuario() {
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
        controller: _nombreController,
        decoration: const InputDecoration(
          labelText: 'Nombre de usuario',
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
        controller: _emailController,
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
        controller: _birthdateController,
        readOnly: true, // Hace que el campo de texto sea de solo lectura
        onTap: () {
          _selectBirthdate(
              context); // Abre el selector de fecha al hacer clic en el campo de texto
        },
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

  Container _inputButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: ElevatedButton(
        onPressed: _registerUser,
        style: ElevatedButton.styleFrom(
          primary: MyColors.color1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
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
