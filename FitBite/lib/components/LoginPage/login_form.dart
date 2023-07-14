import 'dart:convert';
import 'package:fitbite/pages/UserPerfilPage.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fitbite/response/ServerResponse.dart';
import 'package:fitbite/components/pantalla_carga2.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future<void> _login() async {
    final correo = user.text;
    final password = pass.text;

    if (correo.isEmpty) {
      Fluttertoast.showToast(
        msg: "Por favor, ingrese su correo",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    if (password.isEmpty) {
      Fluttertoast.showToast(
        msg: "Por favor, ingrese su contraseña",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    final url = Uri.parse("http://192.168.210.67/login.php");
    final response = await http.post(url, body: {
      "correoUser": correo,
      "passUser": password,
    });

    if (response.statusCode == ResponseDB.successCode) {
      final result = json.decode(response.body);
      if (result['status'] == ResponseDB.success) {
        final nombreUsuario = result['nombreUsuario'];
        final correoUsuario = result['correoUsuario'];
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PantallaCarga2(
              nextPage: UserPerfilPage(),
            ),
          ),
        );
      } else {
        Fluttertoast.showToast(
          msg:
              "La cuenta no se encuentra registrada o ha ingresado mal sus datos",
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
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _inputEmail(),
          _inputPassword(),
          _inputRememberPass(),
          _inputButton(),
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
        controller: user,
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
        controller: pass,
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

  Container _inputRememberPass() {
    bool rememberPassword = false;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.transparent,
            ),
            child: Checkbox(
              value: rememberPassword,
              onChanged: (value) {
                setState(() {
                  rememberPassword = value!;
                });
              },
              shape: CircleBorder(),
              checkColor: Colors.white,
              activeColor: MyColors.color1,
              fillColor:
                  MaterialStateColor.resolveWith((states) => MyColors.color2),
            ),
          ),
          const Text(
            'Recordar contraseña',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: MyColors.textColor,
            ),
          ),
        ],
      ),
    );
  }

  Container _inputButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: ElevatedButton(
        onPressed: _login,
        style: ElevatedButton.styleFrom(
          primary: MyColors.color1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Text(
            'Ingresar',
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
