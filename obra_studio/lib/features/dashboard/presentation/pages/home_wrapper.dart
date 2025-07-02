import 'package:flutter/material.dart';
import 'package:obra_studio/features/dashboard/presentation/pages/home_content.dart'
    as contenido;
import 'package:obra_studio/features/dashboard/presentation/pages/perfil.dart';
import 'package:obra_studio/features/dashboard/presentation/pages/ajustes.dart';
import 'package:obra_studio/features/dashboard/presentation/widgets/custom_appbar.dart';
import 'package:obra_studio/features/dashboard/presentation/widgets/custom_bottomNavigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const PerfilPage(),
    const contenido.HomeContentPage(),
    const AjustesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
