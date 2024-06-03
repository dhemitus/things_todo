import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'add_todo_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'title'),
  FormTextField(name: 'description')
])
class AddTodoView extends StackedView<AddTodoViewModel> {
  const AddTodoView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(AddTodoViewModel viewModel) {
      // TODO: implement onViewModelReady
      super.onViewModelReady(viewModel);
    }

  @override
  Widget builder(
    BuildContext context,
    AddTodoViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('new thing todo'),
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
