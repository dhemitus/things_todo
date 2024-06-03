import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String id;
  bool complete;
  String title;
  String description;

  Todo(
      {required this.id,
      this.complete = false,
      this.title = '',
      this.description = ''});

  @override
  List<Object?> get props => [id, complete, title, description];
}
