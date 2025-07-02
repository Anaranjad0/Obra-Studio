import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return const Center(child: Text('No hay usuario autenticado'));
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Perfil del Usuario',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            if (user.photoURL != null)
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
              ),
            const SizedBox(height: 24),
            Text('Email: ${user.email ?? "No disponible"}'),
            const SizedBox(height: 12),
            Text('Nombre: ${user.displayName ?? "No especificado"}'),
            const SizedBox(height: 12),
            Text('UID: ${user.uid}'),
            const SizedBox(height: 12),
            Text(
              'Último acceso: ${user.metadata.lastSignInTime?.toLocal().toString().split(".").first ?? "Desconocido"}',
            ),
            const SizedBox(height: 12),
            Text(
              'Creado el: ${user.metadata.creationTime?.toLocal().toString().split(".").first ?? "Desconocido"}',
            ),
          ],
        ),
      ),
    );
  }
}
