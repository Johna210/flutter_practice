import 'package:equatable/equatable.dart';

class ToDo extends Equatable {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final String color;
  final bool isCompleted;

  const ToDo({
    required this.title,
    required this.id,
    required this.description,
    required this.dueDate,
    required this.isCompleted,
    this.color = 'RED',
  });

  @override
  List<Object?> get props => [id, title];
}
