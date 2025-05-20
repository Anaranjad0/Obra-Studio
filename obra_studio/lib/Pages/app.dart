import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class ObraStudio extends StatelessWidget {
  const ObraStudio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ObraStudio',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => const HomePage(),
      },
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
