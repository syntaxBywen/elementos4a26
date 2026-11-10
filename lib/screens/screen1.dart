import 'package:flutter/material.dart';
import 'package:proyecto_1/screens/screen2.dart';
import 'package:proyecto_1/screens/screen3.dart';
import 'package:proyecto_1/screens/screen4.dart';
import 'package:proyecto_1/screens/screen5.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 242, 147, 244),
      ),
      body: Container(
        color: Color.fromARGB(255, 33, 212, 243),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Seleccione una opcion:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              boton('Ejemplo de Rows', Colors.purple, context, Screen2()),
              SizedBox(height: 20),
              boton('Ejemplo de ListView', Colors.pink, context, Screen3()),
              SizedBox(height: 20),
              boton(
                'Entradas de datos',
                const Color.fromARGB(255, 246, 137, 204),
                context,
                Screen4(),
              ),
              SizedBox(height: 20),
              botonStateful(
                'Elementos de entrada',
                Colors.green,
                context,
                Screen5(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget boton(
    String texto,
    Color color1,
    BuildContext context,
    StatelessWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        texto,
        style: TextStyle(color: Colors.greenAccent, fontSize: 20),
      ),
    );
  }

  Widget botonStateful(
    String texto,
    Color color1,
    BuildContext context,
    StatefulWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        texto,
        style: TextStyle(color: Colors.greenAccent, fontSize: 20),
      ),
    );
  }
}
