import 'package:flutter/material.dart';

class DocumentacionPage extends StatelessWidget {
  const DocumentacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final documentos = [
      {'titulo': 'Planos Municipales', 'estado': 'Aprobado'},
      {'titulo': 'Boleta', 'estado': 'Revisión'},
      {'titulo': 'Habilitaciones', 'estado': 'Presentado'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Documentación Técnica')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: documentos.length,
        itemBuilder: (context, index) {
          final doc = documentos[index];
          return Card(
            child: ListTile(
              title: Text(doc['titulo']!),
              subtitle: Text('Estado: ${doc['estado']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // Aquí abrirías el PDF o detalle
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Abriendo ${doc['titulo']}')),
                  );
                },
                child: const Text('Ver Documento'),
              ),
            ),
          );
        },
      ),
    );
  }
}
