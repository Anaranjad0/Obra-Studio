import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:obra_studio/firebase_options.dart';
import 'Pages/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ObraStudio());
}
