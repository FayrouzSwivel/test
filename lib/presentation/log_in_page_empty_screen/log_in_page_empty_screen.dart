import 'controller/log_in_page_empty_controller.dart';
import 'package:employer_app/core/app_export.dart';
import 'package:employer_app/core/utils/validation_functions.dart';
import 'package:employer_app/widgets/custom_button.dart';
import 'package:employer_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInPageEmptyScreen extends GetWidget<LogInPageEmptyController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 16, top: 30, right: 16, bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgSwivelbrandstage2page0017,
                              height: getVerticalSize(28.00),
                              width: getHorizontalSize(132.00),
                              margin: getMargin(top: 53)),
                          GestureDetector(
                              onTap: () {
                                welome_toast();
                              },
                              child: Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("lbl_welcome_back".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold20
                                          .copyWith(
                                              height: getVerticalSize(1.00))))),
                          CustomTextFormField(
                              width: 343,
                              focusNode: FocusNode(),
                              controller: controller.group1141Controller,
                              hintText: "lbl_phone_number".tr,
                              margin: getMargin(top: 24),
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 343,
                              focusNode: FocusNode(),
                              controller: controller.group1142Controller,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 10),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          CustomButton(
                              width: 343,
                              text: "lbl_log_in".tr,
                              margin: getMargin(top: 40),
                              onTap: welcome_toast),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("lbl_not_a_member".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular15
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 10, top: 1),
                                            child: Text("lbl_sign_up".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium15
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00),
                                                        decoration:
                                                            TextDecoration
                                                                .underline)))
                                      ]))),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_forget_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium15.copyWith(
                                      height: getVerticalSize(1.00),
                                      decoration: TextDecoration.underline)))
                        ])))));
  }

  welome_toast() {
    Get.rawSnackbar(message: "Hello there!");
  }

  welcome_toast() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Welcome",
        middleText: "Hello there!");
  }
}
