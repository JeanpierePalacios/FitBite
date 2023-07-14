import 'package:fitbite/pages/pagHome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comidas Saludables',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResultadoComidasScreen(),
    );
  }
}

class ResultadoComidasScreen extends StatefulWidget {
  @override
  _ResultadoComidasScreenState createState() => _ResultadoComidasScreenState();
}

class _ResultadoComidasScreenState extends State<ResultadoComidasScreen> {
  String selectedFilter = ''; // Variable para almacenar el filtro seleccionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Comidas Saludables',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0CA5B0),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              SingleChildScrollView( // Scroll vertical independiente
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = 'Desayuno';
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedFilter == 'Desayuno' ? Colors.black : Colors.green,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                          child: Text(
                            'Desayuno',
                            style: TextStyle(
                              color: selectedFilter == 'Desayuno' ? Colors.black : Colors.green,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = 'Almuerzo';
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedFilter == 'Almuerzo' ? Colors.black : Colors.orange,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                          child: Text(
                            'Almuerzo',
                            style: TextStyle(
                              color: selectedFilter == 'Almuerzo' ? Colors.black : Colors.orange,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = 'Cena';
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: selectedFilter == 'Cena' ? Colors.black : Colors.blue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                          child: Text(
                            'Cena',
                            style: TextStyle(
                              color: selectedFilter == 'Cena' ? Colors.black : Colors.blue,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    MealCard(
                      image: 'assets/img/recomendacion_saludable.jpg',
                      name: 'Comida Saludable 1',
                      filter: selectedFilter,
                    ),
                    SizedBox(height: 16.0),
                    MealCard(
                      image: 'assets/img/recomendacion_saludable.jpg',
                      name: 'Comida Saludable 2',
                      filter: selectedFilter,
                    ),
                    SizedBox(height: 16.0),
                    MealCard(
                      image: 'assets/placeholder_image.jpg',
                      name: 'Comida Saludable 3',
                      filter: selectedFilter,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Icon(Icons.home, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              ),
              GestureDetector(
                onTap: null,
                child: Icon(Icons.camera_alt, size: 27.0, color: Color(0XFF0CA5B0)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                },
                child: Icon(Icons.person, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MealCard extends StatelessWidget {
  final String image;
  final String name;
  final String filter;

  const MealCard({
    required this.image,
    required this.name,
    required this.filter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
