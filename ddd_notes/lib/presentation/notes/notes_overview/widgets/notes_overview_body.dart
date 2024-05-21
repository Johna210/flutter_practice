import 'package:ddd_notes/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
        builder: (context, state) {
      print('current State: $state');
      return state.map(
        initial: (_) => Container(),
        loading: (_) => const Center(child: CircularProgressIndicator()),
        loadSuccess: (state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final note = state.notes[index];
              if (note.failureOption.isSome()) {
                return Container(color: Colors.red, width: 100, height: 100);
              } else {
                return Container(color: Colors.green, width: 100, height: 100);
              }
            },
            itemCount: state.notes.size,
          );
        },
        loadFailure: (state) {
          return Container(color: Colors.yellow, width: 200, height: 200);
        },
      );
    });
  }
}
