import 'package:ddd_notes/application/auth/auth_bloc.dart';
import 'package:ddd_notes/injection.dart';
import 'package:ddd_notes/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Notes',
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.green[800],
            colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: Colors.blueAccent,
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.blue[800],
                foregroundColor: Colors.white)),
      ),
    );
  }
}
