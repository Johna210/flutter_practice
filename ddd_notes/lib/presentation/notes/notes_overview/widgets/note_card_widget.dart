import 'package:ddd_notes/application/notes/note_actor/note_actor_bloc.dart';
import 'package:ddd_notes/domain/notes/todo_item.dart';
import 'package:flutter/material.dart';

import 'package:ddd_notes/domain/notes/note.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {
          //TODO : Navigation to note
        },
        onLongPress: () {
          final noteActorBloc = context.read<NoteActorBloc>();
          showDeletingDialogue(context, noteActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.body.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              if (note.todos.length > 0) ...[
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  children: [
                    ...note.todos
                        .getOrCrash()
                        .map(
                          (todo) => TodoDisplay(todoItem: todo),
                        )
                        .iter,
                  ],
                )
              ],
            ],
          ),
        ),
      ),
    );
  }

  void showDeletingDialogue(BuildContext context, NoteActorBloc noteActorBloc) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selected Note: '),
          content: Text(
            note.body.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel')),
            TextButton(
                onPressed: () {
                  noteActorBloc.add(NoteActorEvent.deleted(note));
                  Navigator.of(context).pop();
                },
                child: const Text('Remove'))
          ],
        );
      },
    );
  }
}

class TodoDisplay extends StatelessWidget {
  const TodoDisplay({super.key, required this.todoItem});

  final TodoItem todoItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (todoItem.done)
          const Icon(
            Icons.check_box,
            color: Colors.blue,
          ),
        if (!todoItem.done)
          Icon(
            Icons.check_box_outline_blank_outlined,
            color: Theme.of(context).disabledColor,
          ),
        Text(todoItem.name.getOrCrash()),
      ],
    );
  }
}
