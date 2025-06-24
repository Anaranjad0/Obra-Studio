import 'package:flutter/material.dart';

class ProyectoPage extends StatelessWidget {
  const ProyectoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Proyecto')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo Planimetría 2D')),
                );
              },
              icon: const Icon(Icons.map),
              label: const Text('Ver Planimetría 2D'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo Visor 3D')),
                );
              },
              icon: const Icon(Icons.threed_rotation),
              label: const Text('Abrir Visor 3D'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Abriendo Renders')),
                );
              },
              icon: const Icon(Icons.image),
              label: const Text('Abrir Renders'),
            ),
          ],
        ),
      ),
    );
  }
}
