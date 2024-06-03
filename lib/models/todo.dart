class Todo {
  final String id;
  bool complete;
  String title;
  String description;

  Todo({required this.id, this.complete = false, this.title = '', this.description = ''});
}
