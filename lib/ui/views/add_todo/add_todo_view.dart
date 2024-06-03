import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:things_todo/ui/views/add_todo/add_todo_view.form.dart';

import 'add_todo_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'title'),
  FormTextField(name: 'description')
])
class AddTodoView extends StackedView<AddTodoViewModel> with $AddTodoView {
  const AddTodoView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(AddTodoViewModel viewModel) {
    syncFormWithViewModel(viewModel);
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(hintText: 'description'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => viewModel.addTodo(), 
              child: const Text('submit')
            )
          ],
        ),
      ),
    );
  }

  @override
  void onDispose(AddTodoViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }

  @override
  AddTodoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddTodoViewModel();
}
