import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> pilotos = const {
    'Kimi Antonelli': 'assets/imgs/f7.jpg',
    'George Russell': 'assets/imgs/f11.jpg',
    'Charles Leclerc': 'assets/imgs/f12.jpg',
    'Lewis Hamilton': 'assets/imgs/f13.jpg',
    'Lando Norris': 'assets/imgs/f14.jpg',
    'Oscar Piastri': 'assets/imgs/f15.jpg',
    'Sergio Pérez': 'assets/imgs/f16.jpg',
    'Valtteri Bottas': 'assets/imgs/f17.jpg',
  };

  final Map<String, String> escuderias = const {
    'Mercedes': 'assets/imgs/f24.jpg',
    'Ferrari': 'assets/imgs/f23.jpg',
    'McLaren': 'assets/imgs/f25.jpg',
    'Cadillac': 'assets/imgs/f26.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15151E),
      appBar: AppBar(
        title: const Text('Ventana 3'),
        backgroundColor: const Color(0xFFE10600),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ...pilotos.entries.map((piloto) {
            return _tilePiloto(
              piloto.key,
              piloto.value,
              const Color.fromARGB(255, 12, 4, 62),
              const Color.fromARGB(255, 158, 29, 29),
              Colors.white,
            );
          }),

          ...escuderias.entries.map((escuderia) {
            return _tileEscuderia(
              escuderia.key,
              escuderia.value,
              const Color.fromARGB(255, 4, 0, 30),
              const Color.fromARGB(255, 158, 29, 29),
              Colors.white,
            );
          }),
        ],
      ),
    );
  }

  Widget _tilePiloto(
    String pilotoName,
    String pilotoImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      leading: Image.asset(pilotoImage, width: 50, height: 50),
      title: Text(pilotoName),
      subtitle: const Text('Menos excusas, más caballos de fuerza'),
      trailing: const Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
    );

    return Column(children: [tile, const SizedBox(height: 10)]);
  }

  Widget _tileEscuderia(
    String escyderuaName,
    String escuderiaImage,
    Color tileColor,
    Color iconColor,
    Color textColor,
  ) {
    final tile = ListTile(
      title: Image.asset(escuderiaImage, width: 50, height: 50),
      leading: Icon(Icons.sports_motorsports_outlined),
      subtitle: Text('Escuderias de clase'),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]); // ListTile
  }
}
