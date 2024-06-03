import 'package:stacked/stacked.dart';
import 'package:things_todo/models/todo.dart';
import 'package:things_todo/ui/views/add_todo/add_todo_view.form.dart';
import 'package:things_todo/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:things_todo/services/api_service.dart';

class AddTodoViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<ApiService>();

  void addTodo() {

    hasTitle ? print(titleValue) : print('hlooo');
    hasDescription ? print(descriptionValue) : print('waaaa');

    _apiService.addTodo(Todo(id: _apiService.getId(), title: titleValue ?? 'judul', description: descriptionValue ?? '', complete: false));
    _navigationService.back();
  }
}
