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
        onPressed: () => viewModel.nextToAdd()
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: viewModel.isBusy ?
          const Center(child: CircularProgressIndicator(color: Colors.black,))
        : ListView.builder(
          itemCount: viewModel.data?.length,
          itemBuilder: (BuildContext context, int index) {
            final todo = viewModel.data?[index];
            return Card(
              child: ListTile(
                title: Text(
                  todo?.title ?? '',
                  style: todo!.complete ? const TextStyle(decoration: TextDecoration.lineThrough) : null,
                ),
                trailing: Wrap(
                  spacing: -16,
                  children: [
                    IconButton(
                      onPressed: () => viewModel.doneTodo(todo.id), 
                      icon: const Icon(Icons.done, color: Colors.black,)
                    ),
                    IconButton(
                      onPressed: () => viewModel.deleteTodo(todo.id), 
                      icon: const Icon(Icons.delete, color: Colors.black,)
                    )
                  ],
                ),
                onTap: () => viewModel.nextToDetail(todo),
              ),
            );
          }
        ),
      ),
    );
  }

  @override
  ListTodoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ListTodoViewModel();
}
