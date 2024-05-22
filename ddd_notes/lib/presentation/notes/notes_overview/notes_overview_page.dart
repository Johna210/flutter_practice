import 'package:auto_route/auto_route.dart';
import 'package:ddd_notes/application/auth/auth_bloc.dart';
import 'package:ddd_notes/application/notes/note_actor/note_actor_bloc.dart';
import 'package:ddd_notes/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:ddd_notes/injection.dart';
import 'package:ddd_notes/presentation/notes/notes_overview/widgets/notes_overview_body.dart';
import 'package:ddd_notes/presentation/notes/notes_overview/widgets/uncompleted_switch.dart';
import 'package:ddd_notes/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider(create: (context) => getIt<NoteActorBloc>())
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) =>
                    context.router.replace(const SignInRoute()),
                orElse: () {});
          }),
          BlocListener<NoteActorBloc, NoteActorState>(
              listener: (context, state) {
            state.maybeMap(
                deleteFailure: (state) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(seconds: 5),
                      content: state.noteFailure.map(
                        unexpected: (_) => const Text(
                            'Unexpected Error happened while deleteing.'),
                        permissionDenied: (_) =>
                            const Text('Permission denied.'),
                        unableToUpdate: (_) => const Text('Impossible Error'),
                        unableToDelete: (_) => const Text('Unable to delete'),
                      ),
                    ),
                  );
                },
                orElse: () {});
          })
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            backgroundColor: Colors.green[800],
            foregroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.exit_to_app),
            ),
            actions: const <Widget>[UncompletedSwitch()],
          ),
          body: const NotesOverviewBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO Navigate to Note Form Page
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
