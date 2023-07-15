import 'package:fitbite/pages/pagHome.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ResultadoComidasScreen extends StatefulWidget {
  final String etiqueta;

  ResultadoComidasScreen({required this.etiqueta});

  @override
  _ResultadoComidasScreenState createState() => _ResultadoComidasScreenState();
}

class _ResultadoComidasScreenState extends State<ResultadoComidasScreen> {
  List<Comida> comidas = []; // Lista para almacenar las comidas obtenidas de la base de datos

  @override
  void initState() {
    super.initState();
    // Llamada a la función para obtener las comidas según la etiqueta
    obtenerComidasPorEtiqueta(widget.etiqueta);
  }

  void obtenerComidasPorEtiqueta(String etiqueta) async {
    // Realizar la solicitud HTTP al archivo PHP y obtener los resultados
    var url = Uri.parse('http://169.254.86.2/obtener_comidas.php');
    var response = await http.post(url, body: {'etiqueta': etiqueta});

    if (response.statusCode == 200) {
      // Decodificar la respuesta JSON y obtener los resultados
      var data = jsonDecode(response.body) as List<dynamic>;

      setState(() {
        // Mapear los resultados a objetos Comida y almacenarlos en la lista
        comidas = data.map((item) => Comida.fromMap(item)).toList();
      });
    } else {
      // Manejar el error si la solicitud HTTP falla
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
                children: comidas.map((comida) => MealCard(
                  image: comida.image,
                  name: comida.name,
                  filter: widget.etiqueta,
                )).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0), // padding para 'bottomNavigationBar' con 'body'
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
                      // Aquí puedes definir la pantalla a la que deseas navegar
                      // mientras vas completando su implementación
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

class Comida {
  final String image;
  final String name;

  Comida({required this.image, required this.name});

  // Método para crear un objeto Comida a partir de un mapa
  factory Comida.fromMap(Map<String, dynamic> map) {
    return Comida(
      image: map['imgComida'],
      name: map['nomComida'],
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
