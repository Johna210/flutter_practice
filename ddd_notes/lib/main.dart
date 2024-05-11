import 'package:ddd_notes/infrastructure/core/firebase_options.dart';
import 'package:ddd_notes/injection.dart';
import 'package:ddd_notes/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseOptions);
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
