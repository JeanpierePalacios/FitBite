import 'package:fitbite/pages/UserPerfilPage.dart';
import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

import '../components/ConfigurationPage/configuration_buttons.dart';
import '../components/SavedMealsPage/filter_saved_meals.dart';

class ConfigurationPage extends StatelessWidget{
  const ConfigurationPage({super.key});

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
                    MaterialPageRoute(builder: (context) => UserPerfilPage()),
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
                      'Configuración',
                      style: TextStyle(
                        color: MyColors.color1,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 65,
                        letterSpacing: 2,
                      ),
                    ),
                  ),

                  // Filter saved meals
                  ConfigurationButtons(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}