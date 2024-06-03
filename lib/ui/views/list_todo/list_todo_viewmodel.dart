import 'package:stacked/stacked.dart';
import 'package:things_todo/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:things_todo/app/app.router.dart';
import 'package:things_todo/services/api_service.dart';
import 'package:things_todo/models/todo.dart';

class ListTodoViewModel extends FutureViewModel<List<Todo>> {
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<ApiService>();

  @override
  Future<List<Todo>> futureToRun() => _apiService.getTodos();

  void nextToAdd() {
    _navigationService.navigateToAddTodoView();
  }
}
