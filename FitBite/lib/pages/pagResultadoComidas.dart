import 'package:fitbite/pages/pagHome.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fitbite/config/config.dart';

class ResultadoComidasScreen extends StatefulWidget {
  final String etiqueta;

  ResultadoComidasScreen({required this.etiqueta});

  @override
  _ResultadoComidasScreenState createState() => _ResultadoComidasScreenState();
}

class _ResultadoComidasScreenState extends State<ResultadoComidasScreen> {
  List<Comida> comidas = [];

  @override
  void initState() {
    super.initState();
    obtenerComidasPorEtiqueta(widget.etiqueta);
  }

  void obtenerComidasPorEtiqueta(String etiqueta) async {
    var url = Uri.parse("${config.baseUrl}/obtener_comidas.php");
    var response = await http
        .post(url, body: {'nomFruta': etiqueta, 'nomVerduras': etiqueta});

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List<dynamic>;

      setState(() {
        comidas = data.map((item) => Comida.fromMap(item)).toList();
      });
    } else {
      print('Error en la solicitud HTTP: ${response.statusCode}');
    }
  }

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
              Column(
                children: comidas
                    .map((comida) => MealCard(
                          image: comida.image,
                          name: comida.name,
                          calories: comida.calories,
                          fats: comida.fats,
                        ))
                    .toList(),
              ),
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
                child: Icon(Icons.home,
                    size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              ),
              GestureDetector(
                onTap: null,
                child: Icon(Icons.camera_alt,
                    size: 27.0, color: Color(0XFF0CA5B0)),
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

class Comida {
  final String image;
  final String name;
  final double calories;
  final double fats;

  Comida(
      {required this.image,
      required this.name,
      required this.calories,
      required this.fats});

  factory Comida.fromMap(Map<String, dynamic> map) {
    return Comida(
      image: "${config.baseUrl}/images/${map['imgComida']}",
      name: map['nomComida'],
      calories: map['calComida'],
      fats: map['graComida'],
    );
  }
}

class MealCard extends StatelessWidget {
  final String image;
  final String name;
  final double calories;
  final double fats;

  const MealCard({
    required this.image,
    required this.name,
    required this.calories,
    required this.fats,
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
                    child: Image.network(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text('Calorías: $calories'),
                      Text('Grasas: $fats'),
                    ],
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
