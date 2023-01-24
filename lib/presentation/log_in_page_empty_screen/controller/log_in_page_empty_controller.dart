import 'package:employer_app/core/app_export.dart';
import 'package:employer_app/presentation/log_in_page_empty_screen/models/log_in_page_empty_model.dart';
import 'package:flutter/material.dart';

class LogInPageEmptyController extends GetxController {
  TextEditingController group1141Controller = TextEditingController();

  TextEditingController group1142Controller = TextEditingController();

  Rx<LogInPageEmptyModel> logInPageEmptyModelObj = LogInPageEmptyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1141Controller.dispose();
    group1142Controller.dispose();
  }
}
