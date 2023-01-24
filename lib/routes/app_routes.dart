import 'package:employer_app/presentation/log_in_page_empty_screen/log_in_page_empty_screen.dart';
import 'package:employer_app/presentation/log_in_page_empty_screen/binding/log_in_page_empty_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String logInPageEmptyScreen = '/log_in_page_empty_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: logInPageEmptyScreen,
      page: () => LogInPageEmptyScreen(),
      bindings: [
        LogInPageEmptyBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LogInPageEmptyScreen(),
      bindings: [
        LogInPageEmptyBinding(),
      ],
    )
  ];
}
