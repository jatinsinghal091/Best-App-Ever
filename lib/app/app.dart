import 'package:my_first_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:my_first_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_first_app/ui/views/bottom/bottom_view.dart';
import 'package:my_first_app/ui/views/home/home_view.dart';
import 'package:my_first_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_first_app/ui/views/bottom/bottom_view.dart';
import 'package:my_first_app/ui/views/post/post_view.dart';
import 'package:my_first_app/ui/views/bottom/bottom_view.dart';
import 'package:my_first_app/ui/views/postman/postman_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),

    MaterialRoute(page: PostView),
    MaterialRoute(page: BottomView),
    MaterialRoute(page: PostmanView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
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
