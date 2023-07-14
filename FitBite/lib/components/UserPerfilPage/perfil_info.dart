import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class PerfilInfo extends StatefulWidget {
  const PerfilInfo({Key? key}) : super(key: key);

  @override
  _PerfilInfoState createState() => _PerfilInfoState();
}

class _PerfilInfoState extends State<PerfilInfo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            width: 120,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img/user_foto.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jeanpiere Palacios',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: MyColors.textColor,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'jeanpiere@gmail.com',
                style: TextStyle(
                  fontSize: 12,
                  color: MyColors.textColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
