import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> pilotos = const {
    'Kimi Antonelli': 'assets/imgs/f7.jpg',
    'George Russell': 'assets/imgs/f6.jpg',
    'Sergio Pérez': 'assets/imgs/f8.jpg',
  };

  final escuderias = const [
    'Ferrari',
    'McLaren',
    'Red Bull',
    'Mercedes',
    'Aston Martin',
    'Williams',
    'Alpine',
    'Racing Bulls',
    'Haas',
    'Audi',
    'Cadillac',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15151E), // Negro asfalto oficial F1
      appBar: AppBar(
        title: const Text('Ventana 3'), // Con el espacio corregido
        backgroundColor: const Color(0xFFE10600), // Rojo oficial F1
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ...pilotos.entries.map((piloto) {
            return _tilePiloto(
              piloto.key,
              piloto.value,
              const Color.fromARGB(255, 28, 14, 118),
              const Color.fromARGB(255, 158, 29, 29),
              Colors.white,
            );
          }),

          const Divider(color: Color(0xFFE10600), height: 2, thickness: 1),
          ...escuderias.map(
            (escuderia) => ListTile(
              leading: const Icon(
                Icons.directions_car,
                color: Color(0xFFE10600),
              ),
              title: Text(escuderia),
              subtitle: const Text('Escuderias de clase'),
              trailing: const Icon(Icons.arrow_forward),
              tileColor: const Color(
                0xFF1A1A24,
              ), // Gris asfalto secundario para escuderías
              iconColor: Colors.white70,
              textColor: CupertinoColors.lightBackgroundGray,
            ),
          ),
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

    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}
