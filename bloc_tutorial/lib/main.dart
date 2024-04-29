import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/app.dart';
import 'package:bloc_tutorial/counter_observer.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(CounterApp());
}
