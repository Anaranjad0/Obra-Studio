import 'package:flutter/material.dart';
import 'package:obra_studio/core/routes/app_routes.dart';
import 'package:obra_studio/features/dashboard/presentation/widgets/custom_bottomNavigator.dart';
import 'package:obra_studio/features/dashboard/presentation/widgets/custom_appbar.dart';
import 'package:obra_studio/features/dashboard/presentation/widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: CustomCardWidget(
                title: 'Documentación Técnica',
                icon: Icons.description,
                color: Theme.of(context).colorScheme.primary,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.documentacion);
                },
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: CustomCardWidget(
                title: 'Obra',
                icon: Icons.construction,
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.obra);
                },
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: CustomCardWidget(
                title: 'Proyecto',
                icon: Icons.engineering,
                color: Theme.of(context).colorScheme.tertiary,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.proyecto);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
