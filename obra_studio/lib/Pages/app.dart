import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class ObraStudio extends StatelessWidget {
  const ObraStudio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ObraStudio',
      initialRoute:
          FirebaseAuth.instance.currentUser == null ? '/login' : '/home',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/profile':
            (context) => ProfileScreen(
              providers: [EmailAuthProvider()],
              actions: [
                SignedOutAction((context) {
                  Navigator.pushReplacementNamed(context, '/login');
                }),
              ],
            ),
      },
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
