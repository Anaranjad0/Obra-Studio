import 'package:flutter/material.dart';
import '../widget/gantt.dart';
import '../widget/checklist.dart';

class ObraPage extends StatelessWidget {
  const ObraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seguimiento de Obra')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text(
              'Diagrama de Gantt',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            GanttChartWidget(),
            SizedBox(height: 24),
            ChecklistAvanceObra(),
          ],
        ),
      ),
    );
  }
}
