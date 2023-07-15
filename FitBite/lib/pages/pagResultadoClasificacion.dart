import 'dart:io';
import 'package:fitbite/pages/pagHome.dart';
import 'package:fitbite/pages/pagResultadoComidas.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:fluttertoast/fluttertoast.dart';

String? imagePath;

class ResultadoClasificacionScreen extends StatefulWidget {
  final String imagePath;

  ResultadoClasificacionScreen({required this.imagePath});

  @override
  _ResultadoClasificacionScreenState createState() =>
      _ResultadoClasificacionScreenState();
}

class _ResultadoClasificacionScreenState
    extends State<ResultadoClasificacionScreen> {
  String etiqueta = 'Etiqueta';

  @override
  void initState() {
    super.initState();
    loadModel();
    obtenerEtiqueta();
  }

  Future<void> loadModel() async {
    try {
      await Tflite.loadModel(
        model: 'assets/mml_clasificador_fitbite.tflite',
        labels: 'assets/etiquetas_clasificador_fitbite.txt',
      );
      Fluttertoast.showToast(msg: 'Modelo cargado correctamente');
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error al cargar el modelo: $e');
    }
  }

  Future<void> obtenerEtiqueta() async {
    List<dynamic>? resultado = await Tflite.runModelOnImage(
      path: widget.imagePath,
      numResults: 1,
      threshold: 0.5,
    );

    if (resultado != null && resultado.isNotEmpty) {
      double confidence = resultado[0]['confidence'] as double;
      String etiquetaObtenida = resultado[0]['label'] as String;
      if (confidence >= 0.5) {
        setState(() {
          etiqueta = etiquetaObtenida;
        });
      } else {
        setState(() {
          etiqueta = 'No se pudo determinar la fruta/verdura con certeza';
        });
      }
    } else {
      setState(() {
        etiqueta = '¡Algo inesperado ocurrió! No se pudo determinar la fruta/verdura.';
      });
    }
  }

  Future<void> _captureImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        imagePath = pickedImage.path;
        obtenerEtiqueta();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(width: 8.0),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25.0),
              Text(
                'Resultado...',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0CA5B0),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25.0),
              Image.file(
                File(widget.imagePath),
                fit: BoxFit.contain,
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.0),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Se identificó como: ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: etiqueta,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultadoComidasScreen(etiqueta: etiqueta),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0CA5B0),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        'Explorar comidas',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
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
                onTap: null,
                child: Icon(Icons.home, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
              ),
              GestureDetector(
                onTap: () {
                  _captureImage();
                },
                child: Icon(Icons.camera_alt, size: 27.0, color: Color.fromRGBO(12, 165, 176, 0.75)),
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

void main() {
  String imagePath = '';
  runApp(MaterialApp(
    title: 'Resultado Clasificacion App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ResultadoClasificacionScreen(imagePath: imagePath),
  ));
}
