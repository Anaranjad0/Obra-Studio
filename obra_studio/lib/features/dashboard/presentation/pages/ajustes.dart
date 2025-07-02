import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:obra_studio/core/routes/app_routes.dart';

class AjustesPage extends StatelessWidget {
  const AjustesPage({super.key});

  Future<void> _cerrarSesion(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, AppRoutes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => _cerrarSesion(context),
          icon: const Icon(Icons.logout),
          label: const Text('Cerrar sesión'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
