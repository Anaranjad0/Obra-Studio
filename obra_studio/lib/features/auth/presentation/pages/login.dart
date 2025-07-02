import 'package:flutter/material.dart';
import '../widgets/loginForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Image.asset('assets/images/logo.png', height: 150),
                const SizedBox(height: 12),
                const Text(
                  'Obra Studio',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
