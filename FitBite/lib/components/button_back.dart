import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0, // Posición horizontal desde la izquierda
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.color1,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded),
              color: Colors.white,
              onPressed: () {
                // Lógica para manejar el evento de presionar el botón de flecha
                // Aquí puedes agregar tu lógica personalizada.
              },
            ),
          ),
        ),
      ],
    );
  }
}
