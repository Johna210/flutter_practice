import 'package:notes/injection.dart';
import 'package:notes/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
