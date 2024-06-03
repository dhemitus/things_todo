import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'detail_todo_viewmodel.dart';
import 'package:things_todo/models/todo.dart';

class DetailTodoView extends StackedView<DetailTodoViewModel> {
  final Todo todo;
  const DetailTodoView({Key? key, required this.todo}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailTodoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Text(todo.description),
      ),
    );
  }

  @override
  DetailTodoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailTodoViewModel();
}
