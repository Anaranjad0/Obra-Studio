import 'package:flutter/material.dart';

class ObraPage extends StatelessWidget {
  const ObraPage({super.key});

  @override
  Widget build(BuildContext context) {
    final materiales = ['Cemento', 'Hierro', 'Arena', 'Ladrillos'];

    return Scaffold(
      appBar: AppBar(title: const Text('Obra')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Diagrama de Gantt (Placeholder)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              height: 150,
              color: Colors.grey[300],
              child: const Center(child: Text('Aquí irá el Gantt')),
            ),
            const SizedBox(height: 24),
            const Text(
              'Materiales Usados:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ...materiales.map(
              (mat) =>
                  ListTile(leading: const Icon(Icons.check), title: Text(mat)),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Aquí abrirías galería de fotos de avance
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Abriendo Fotos de Avance')),
                  );
                },
                icon: const Icon(Icons.photo_library),
                label: const Text('Ver Fotos de Avance'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
