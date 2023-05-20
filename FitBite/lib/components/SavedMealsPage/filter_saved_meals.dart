import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class FilterSavedMeals extends StatelessWidget {
  const FilterSavedMeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/receta_arandano_1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Plato 1 Arandano',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: MyColors.textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
