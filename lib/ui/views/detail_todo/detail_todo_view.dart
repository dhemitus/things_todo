import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'detail_todo_viewmodel.dart';

class DetailTodoView extends StackedView<DetailTodoViewModel> {
  const DetailTodoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailTodoViewModel viewModel,
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
  DetailTodoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailTodoViewModel();
}
