import 'package:flutter/material.dart';
import 'Pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
  /*@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('ObraStudio'))),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: <Widget>[
                  Card(child: _SampleCard(cardName: 'Documentación')),
                  Card.filled(child: _SampleCard(cardName: 'Avance Obra')),
                  Card.outlined(child: _SampleCard(cardName: 'Proyecto')),
                ],
              );
            },
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
            NavigationDestination(icon: Icon(Icons.work), label: 'Proyectos'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Ajustes'),
          ],
          onDestinationSelected: (int index) {
            // lógica para cambiar de página si lo necesitás
          },
          selectedIndex: 0, // podés hacerlo dinámico si cambiás de pestaña
        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName});
  final String cardName;

  
}*/