import 'package:flutter/material.dart';

class ChecklistAvanceObra extends StatefulWidget {
  const ChecklistAvanceObra({super.key});

  @override
  State<ChecklistAvanceObra> createState() => _ChecklistAvanceObraState();
}

class _ChecklistAvanceObraState extends State<ChecklistAvanceObra> {
  final List<Map<String, dynamic>> _tareas = [
    {'nombre': 'Preparación del terreno', 'completado': false},
    {'nombre': 'Cimentación', 'completado': false},
    {'nombre': 'Electricidad', 'completado': false},
    {'nombre': 'Acabados', 'completado': false},
    {'nombre': 'Pintura', 'completado': false},
  ];

  Color getBarColor(int porcentaje) {
    if (porcentaje <= 30) return Colors.red;
    if (porcentaje <= 70) return Colors.amber;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    int completadas = _tareas.where((t) => t['completado'] == true).length;
    double progreso = completadas / _tareas.length;
    int porcentaje = (progreso * 100).round();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Checklist de Avance',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: progreso,
                minHeight: 24,
                backgroundColor: Colors.grey.shade300,
                color: getBarColor(porcentaje),
              ),
            ),
            Text(
              '$porcentaje%',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: porcentaje <= 50 ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        ..._tareas.asMap().entries.map((entry) {
          int index = entry.key;
          var tarea = entry.value;
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              title: Text(tarea['nombre']),
              leading: Checkbox(
                value: tarea['completado'],
                onChanged: (valor) {
                  setState(() {
                    tarea['completado'] = valor!;
                  });
                },
              ),
              trailing: TextButton.icon(
                icon: const Icon(Icons.photo_library_outlined),
                label: const Text('Ver fotos'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Galería para "${tarea['nombre']}" en desarrollo',
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }),
      ],
    );
  }
}
