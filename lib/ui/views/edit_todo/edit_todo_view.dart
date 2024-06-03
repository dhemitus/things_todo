import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'edit_todo_viewmodel.dart';

class EditTodoView extends StackedView<EditTodoViewModel> {
  const EditTodoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditTodoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  EditTodoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EditTodoViewModel();
}
