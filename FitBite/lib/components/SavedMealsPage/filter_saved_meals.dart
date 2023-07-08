import 'package:flutter/material.dart';
import 'package:fitbite/components/my_colors.dart';

class FilterSavedMeals extends StatefulWidget {
  const FilterSavedMeals({Key? key}) : super(key: key);

  @override
  _FilterSavedMealsState createState() => _FilterSavedMealsState();
}

class _FilterSavedMealsState extends State<FilterSavedMeals> {
  String selectedFilter = 'desayuno';
  List<Meal> meals = [
    Meal(
      name: 'Batido de arándanos y bebida de soya',
      image: 'assets/img/receta_arandano_1.png',
      filter: 'desayuno',
    ),
    Meal(
      name: 'Batido de arándanos y bebida de soya 2',
      image: 'assets/img/receta_arandano_1.png',
      filter: 'desayuno',
    ),
    Meal(
      name: 'Ensalada de espinacas con granada y queso',
      image:
          'assets/img/Ensalada de pollo con arandanos, espinaca y aliño de yogurt.jpg',
      filter: 'almuerzo',
    ),
    Meal(
      name: 'Salmon con costra  de avellanas',
      image: 'assets/comidas/Salmon con costra  de avellanas.png',
      filter: 'cena',
    ),
  ];

  List<Meal> getFilteredMeals() {
    return meals.where((meal) => meal.filter == selectedFilter).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilterButton(
                        text: 'Desayuno',
                        filter: 'desayuno',
                        selectedFilter: selectedFilter,
                        onTap: () {
                          setState(() {
                            selectedFilter = 'desayuno';
                          });
                        },
                      ),
                      FilterButton(
                        text: 'Almuerzo',
                        filter: 'almuerzo',
                        selectedFilter: selectedFilter,
                        onTap: () {
                          setState(() {
                            selectedFilter = 'almuerzo';
                          });
                        },
                      ),
                      FilterButton(
                        text: 'Cena',
                        filter: 'cena',
                        selectedFilter: selectedFilter,
                        onTap: () {
                          setState(() {
                            selectedFilter = 'cena';
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Card(
          elevation: 4,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: getFilteredMeals()
                  .map((meal) =>
                      MainContainer(text: meal.name, image: meal.image))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class FilterButton extends StatelessWidget {
  final String text;
  final String filter;
  final String selectedFilter;
  final VoidCallback onTap;

  const FilterButton({
    required this.text,
    required this.filter,
    required this.selectedFilter,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = filter == selectedFilter;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? MyColors.color1 : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : MyColors.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  final String text;
  final String image;

  const MainContainer({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: MyColors.textColor,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class Meal {
  final String name;
  final String image;
  final String filter;

  Meal({required this.name, required this.image, required this.filter});
}
