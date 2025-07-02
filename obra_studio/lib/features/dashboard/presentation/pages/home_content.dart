import 'package:flutter/material.dart';
import 'package:obra_studio/core/routes/app_routes.dart';
import 'package:obra_studio/features/dashboard/presentation/widgets/custom_card.dart';

class HomeContentPage extends StatelessWidget {
  const HomeContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        SizedBox(
          height: screenHeight * 0.25,
          child: CustomCard(
            title: 'Documentación Técnica',
            backgroundImagePath: 'assets/images/cards/documentacion.webp',
            onTap: () => Navigator.pushNamed(context, AppRoutes.documentacion),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: screenHeight * 0.25,
          child: CustomCard(
            title: 'Obra',
            backgroundImagePath: 'assets/images/cards/obra.webp',
            onTap: () => Navigator.pushNamed(context, AppRoutes.obra),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: screenHeight * 0.25,
          child: CustomCard(
            title: 'Proyecto',
            backgroundImagePath: 'assets/images/cards/proyecto.webp',
            onTap: () => Navigator.pushNamed(context, AppRoutes.proyecto),
          ),
        ),
      ],
    );
  }
}
