import 'package:flutter/material.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Inicio'),
        NavigationDestination(icon: Icon(Icons.work), label: 'Proyectos'),
        NavigationDestination(icon: Icon(Icons.settings), label: 'Ajustes'),
      ],
      onDestinationSelected: (index) {
        // Acá podrías manejar navegación en el futuro
      },
      selectedIndex: 0,
    );
  }
}
