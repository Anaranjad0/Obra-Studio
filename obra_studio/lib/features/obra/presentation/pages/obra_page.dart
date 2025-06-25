import 'package:flutter/material.dart';

class ObraPage extends StatelessWidget {
  const ObraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Obra')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Diagrama de Gantt',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              height: 150,
              color: Colors.grey[300],
              child: const Center(child: Text('diagrama')),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
