import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ValorNutricional App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ValorNutricional App'),
        ),
        body: Center(
          child: ValorNutricionalPopup(),
        ),
      ),
    );
  }
}

class ValorNutricionalPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return FractionallySizedBox(
              widthFactor: 0.8,
              child: AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Información Nutricional',
                      style: TextStyle(color: Color(0xFF0CA5B0)),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Calorías: 100'),
                    Text('Carbohidratos: 20g'),
                    Text('Grasas: 5g'),
                    Text('Proteínas: 10g'),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
