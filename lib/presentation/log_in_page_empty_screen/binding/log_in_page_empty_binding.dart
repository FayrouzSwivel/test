import '../controller/log_in_page_empty_controller.dart';
import 'package:get/get.dart';

class LogInPageEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInPageEmptyController());
  }
}
