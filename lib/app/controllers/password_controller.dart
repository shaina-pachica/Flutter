// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {
  final currentController = TextEditingController();
  final newController = TextEditingController();
  final verifyController = TextEditingController();

  var current_error = ''.obs;
  var new_error = ''.obs;
  var verify_error = ''.obs;

  var show_current = false.obs;
  var show_new = false.obs;
  var show_verify = false.obs;

  var is_saved_enabled = false.obs;

  final default_password = '123a'; // Example default password

  void validateCurrent(String value) {
    current_error.value =
        (value != default_password) ? 'Current password is incorrect' : '';
    _updateSaveState();
  }

  void validateNew(String value) {
    new_error.value = (value.isEmpty) ? 'New password cannot be empty' : '';
    _updateSaveState();
  }

  void validateVerify(String value) {
    verify_error.value =
        (value != newController.text) ? 'Passwords do not match' : '';
    _updateSaveState();
  }

  void _updateSaveState() {
    is_saved_enabled.value = current_error.value.isEmpty &&
        new_error.value.isEmpty &&
        verify_error.value.isEmpty &&
        currentController.text.isNotEmpty &&
        newController.text.isNotEmpty &&
        verifyController.text.isNotEmpty;
  }

  void savePassword() {
    if (is_saved_enabled.value) {
      Get.snackbar('Success', 'Password updated successfully!',
          snackPosition: SnackPosition.BOTTOM);
      currentController.clear();
      newController.clear();
      verifyController.clear();
      is_saved_enabled.value = false;
    }
  }

  void cancel() {
    currentController.clear();
    newController.clear();
    verifyController.clear();
    current_error.value = '';
    new_error.value = '';
    verify_error.value = '';
    is_saved_enabled.value = false;
  }
}
