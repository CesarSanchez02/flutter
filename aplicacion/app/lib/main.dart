import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion flutter",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key});

  @override
  State<Inicio> createState() => InicioState();
}

class InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aplicacion flutter",
          style:
              TextStyle(color: Color.fromARGB(255, 0, 255, 221)), // Cambia el color del título aquí
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
              "https://pbs.twimg.com/media/EfDe0kRX0AAo_ay.jpg",
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Lógica para la opción 1
                },
                child: Text('boton 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Lógica para la opción 2
                },
                child: Text('boton 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Lógica para la opción 3
                },
                child: Text('boton 3'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}