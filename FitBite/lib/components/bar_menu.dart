import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60, // Altura de la barra de navegación
      color: MyColors.background0, // Color de fondo de la barra de navegación
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alineación horizontal centrada con espaciado uniforme
        children: [
          IconButton(
            icon: Icon(Icons.home),
            color: MyColors.textColor, // Color del ícono
            onPressed: () {
              // Lógica para manejar el evento de presionar el ícono de home
              // Aquí puedes agregar tu lógica personalizada.
            },
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: MyColors.textColor, // Color del ícono
            onPressed: () {
              // Lógica para manejar el evento de presionar el ícono de la cámara
              // Aquí puedes agregar tu lógica personalizada.
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            color: MyColors.textColor, // Color del ícono
            onPressed: () {
              // Lógica para manejar el evento de presionar el ícono de la imagen de usuario
              // Aquí puedes agregar tu lógica personalizada.
            },
          ),
        ],
      ),
    );
  }
}
