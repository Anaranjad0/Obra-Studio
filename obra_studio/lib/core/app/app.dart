import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_theme.dart';
import 'package:obra_studio/features/dashboard/presentation/pages/home_wrapper.dart';
import 'package:obra_studio/features/auth/presentation/pages/login.dart';
import '../../features/auth/presentation/pages/splash_screen.dart';

class ObraStudio extends StatelessWidget {
  const ObraStudio({super.key});

  @override
  Widget build(BuildContext context) {
    final allRoutes = <String, WidgetBuilder>{
      ...AppRoutes.routes,
      '/profile':
          (context) => ProfileScreen(
            providers: [EmailAuthProvider()],
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, AppRoutes.login);
              }),
            ],
          ),
    };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ObraStudio',
      theme: AppTheme.lightTheme,
      routes: allRoutes,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }
          if (snapshot.hasData) {
            return const HomePage();
          }
          return const LoginPage();
        },
      ),
    );
  }
}
