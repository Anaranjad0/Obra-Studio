import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:obra_studio/core/firebase_options.dart';
import 'core/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ObraStudio());
}
