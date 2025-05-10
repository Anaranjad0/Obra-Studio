import 'package:flutter/material.dart';
import 'package:obrastudio/Widgets/navigator.dart';
import '../widgets/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ObraStudio')),
      ),
      body: Center(
        child: Column(
          children: const [
            SampleCard(cardName: 'Documentación'),
            SampleCard(cardName: 'Avance Obra'),
            SampleCard(cardName: 'Proyecto'),
          ],
        ),
      ),
      bottomNavigationBar: const AppNavigationBar(),
    );
  }
}
