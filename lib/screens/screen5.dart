import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  //variables para almacenar los valores de entrada
  bool _switchValue = false;
  double _slideVlaue = 0.0;
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5 ')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Entrada de Datos'),
          //Lamadas a los widget de entrada de datos
          _entradaTexto(),
          _entradaSwitch(),
          _entradaSlider(),
        ],
      ),
    );
  }

  TextField _entradaTexto() {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Escribe tu nombre',
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        print('valor del TextField: $value');
      },
    );
  }

  Row _entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('¿Te Gusta Flutter?'),
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
              print('El Valor de Swwitch es: $_switchValue');
            }); // Accion al cambiar el switch
          },
        ),
      ],
    );
  }

  Column _entradaSlider() {
    return Column(
      children: [
        Text('Indica que tanto te gusta Flutter: '),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: const Color.fromARGB(255, 137, 255, 2),
          thumbColor: Colors.blueGrey,
          value: _slideVlaue,
          divisions: 10,
          label: '${_slideVlaue.round()}',
          onChanged: (value) {
            setState(() {
              _slideVlaue = value;
              print('Se Cambio el Slider: $_slideVlaue');
            });
          },
        ),
      ],
    );
  }
}
