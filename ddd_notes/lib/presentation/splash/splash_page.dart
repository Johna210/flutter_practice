import 'package:auto_route/auto_route.dart';
import 'package:ddd_notes/application/auth/auth_bloc.dart';
import 'package:ddd_notes/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              context.router.replace(const NotesOverviewRoute()),
          unauthenticated: (_) => context.router.replace(const SignInRoute()),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
