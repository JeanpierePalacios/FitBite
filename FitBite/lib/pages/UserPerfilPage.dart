import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

import '../components/UserPerfilPage/actions_buttons.dart';
import '../components/UserPerfilPage/perfil_info.dart';

class UserPerfilPage extends StatelessWidget{
  const UserPerfilPage({super.key});

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
                  // Lógica para manejar el evento de presionar el botón de flecha
                  // Aquí puedes agregar tu lógica personalizada.
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

                  //Info Perfil
                  PerfilInfo(),

                  //Actions Buttons
                  ActionsButtons(),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}