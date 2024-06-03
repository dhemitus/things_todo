import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'add_todo_viewmodel.dart';

class AddTodoView extends StackedView<AddTodoViewModel> {
  const AddTodoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddTodoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new thing todo'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  AddTodoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddTodoViewModel();
}
