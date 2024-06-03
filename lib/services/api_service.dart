import 'dart:math';
import 'package:things_todo/models/todo.dart';

class ApiService {
  List<Todo> _list = [];

  String getId() {
    return String.fromCharCodes(
      List.generate(10, (_) => Random().nextInt(33) + 80)
    );
  }

  List<Todo> getTodos() {
    return _list;
  }

  Todo getTodo(String id) {
    return _list.firstWhere((item) => item.id == id );
  }

  void addTodo(Todo todo) {
    _list.add(todo);
  }

  void deleteTodo(String id) {
    _list.removeWhere((item) => item.id == id);
  }

  void editTodo(Todo todo) {
    final index = _list.indexWhere((item) => item.id == todo.id);

    if(index != -1) {
      _list[index] = todo;
    }
  }

  void toggleTodo(String id) {
    final index = _list.indexWhere((item) => item.id == id);

    if(index != -1) {
      _list[index].complete = !_list[index].complete;
    }
  }
}