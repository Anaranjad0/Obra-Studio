import 'package:flutter/material.dart';
import 'package:obra_studio/features/auth/presentation/pages/login.dart';
import 'package:obra_studio/features/dashboard/presentation/pages/home.dart';
import 'package:obra_studio/features/documentacion/presentation/pages/documentacion_page.dart';
import 'package:obra_studio/features/obra/presentation/pages/obra_page.dart';
import 'package:obra_studio/features/proyecto/presentation/pages/proyecto_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String documentacion = '/documentacion';
  static const String obra = '/obra';
  static const String proyecto = '/proyecto';

  static Map<String, WidgetBuilder> get routes => {
    login: (context) => const LoginPage(),
    dashboard: (context) => const HomePage(),
    documentacion: (context) => const DocumentacionPage(),
    obra: (context) => const ObraPage(),
    proyecto: (context) => const ProyectoPage(),
  };
}
