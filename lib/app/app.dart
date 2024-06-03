import 'package:things_todo/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:things_todo/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:things_todo/ui/views/home/home_view.dart';
import 'package:things_todo/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:things_todo/services/api_service.dart';
import 'package:things_todo/ui/views/list_todo/list_todo_view.dart';
import 'package:things_todo/ui/views/detail_todo/detail_todo_view.dart';
import 'package:things_todo/ui/views/add_todo/add_todo_view.dart';
import 'package:things_todo/ui/views/edit_todo/edit_todo_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: ListTodoView),
    MaterialRoute(page: DetailTodoView),
    MaterialRoute(page: AddTodoView),
    MaterialRoute(page: EditTodoView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
