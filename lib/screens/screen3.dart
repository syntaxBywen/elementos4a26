import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final pilotos = const [
    'Charles Leclerc',
    'Lewis Hamilton',
    'Lando Norris',
    'Oscar Piastri',
    'Max Verstappen',
    'Liam Lawson',
    'George Russell',
    'Kimi Antonelli',
    'Fernando Alonso',
    'Lance Stroll',
    'Carlos Sainz',
    'Alexander Albon',
    'Pierre Gasly',
    'Franco Colapinto',
    'Yuki Tsunoda',
    'Isack Hadjar',
    'Esteban Ocon',
    'Oliver Bearman',
    'Nico Hülkenberg',
    'Gabriel Bortoleto',
    'Sergio Pérez',
    'Valtteri Bottas',
  ];

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
          ...pilotos.map(
            (piloto) => ListTile(
              leading: const Icon(
                Icons.person_2_outlined,
                color: Color(0xFFE10600),
              ),
              title: Text(piloto),
              subtitle: const Text('Menos excusas, más caballos de fuerza'),
              trailing: const Icon(Icons.arrow_forward),
              tileColor: const Color(
                0xFF1F1F2E,
              ), // Gris carbono oscuro para pilotos
              iconColor: Colors.white70,
              textColor: CupertinoColors.lightBackgroundGray,
            ),
          ),
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
}
