import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'list_todo_viewmodel.dart';

class ListTodoView extends StackedView<ListTodoViewModel> {
  const ListTodoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ListTodoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () => viewModel.nextToAdd()),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ListTodoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ListTodoViewModel();
}
