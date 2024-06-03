import 'package:stacked/stacked.dart';
import 'package:things_todo/ui/views/add_todo/add_todo_view.form.dart';

class AddTodoViewModel extends FormViewModel {

  void check() {
    print(titleValue);
    print(descriptionValue);
  }
}
