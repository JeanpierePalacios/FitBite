import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';
import 'package:fitbite/pages/LoginPage.dart';
import '../components/UserPerfilPage/actions_buttons.dart';
import '../components/UserPerfilPage/perfil_info.dart';
import 'package:fitbite/pages/pagFrutas.dart';
import 'package:fitbite/pages/pagRecomendacionSaludable.dart';
import 'package:fitbite/pages/pagVerduras.dart';
import 'package:fitbite/pages/pagHome.dart';

class UserPerfilPage extends StatelessWidget {
  const UserPerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background0,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: MyColors.color1,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(60.0),
                    child: Text(
                      'Tu Perfil',
                      style: TextStyle(
                        color: MyColors.color1,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 65,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  PerfilInfo(),
                  ActionsButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 8.0), // padding para 'bottomNavigationBar' con 'body'
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: null,
                child: Icon(Icons.home, size: 27.0, color: Color(0XFF0CA5B0)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CaptureScreen()),
                  );
                },
                child: Icon(Icons.camera_alt,
                    size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      // Aquí puedes definir la pantalla a la que deseas navegar
                      // mientras vas completando su implementación
                      return HomeScreen();
                    }),
                  );
                },
                child: Icon(Icons.person,
                    size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
