// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordController extends GetxController {

  // text controllers for password fields
  // These controllers will be used to manage the text input for current, new, and verify password fields
  final currentController = TextEditingController();
  final newController = TextEditingController();
  final verifyController = TextEditingController();

  // Reactive variables for error messages
  // These variables will hold error messages for each password field
  var current_error = ''.obs;
  var new_error = ''.obs;
  var verify_error = ''.obs;

  // Reactive variables to control visibility of password fields
  // These variables will determine whether the password fields are shown as plain text or obscured
  var show_current = false.obs;
  var show_new = false.obs;
  var show_verify = false.obs;

  // Track if any changes have been made
  // This variable will be used to enable or disable the save button based on changes
  var has_changes = false.obs;

  final default_password = '123a'; // Example default password


  /*   * *** METHODS */

  // Check if the current password matches the default password
  void validateCurrent(String value) {
    current_error.value = (value != default_password)
        ? 'Current password is incorrect'
        : '';
    _updateSaveState();
  }

  // Validate the new password and check if it matches the verification password
  void validateNew(String value) {
    new_error.value = (value.isEmpty) ? 'New password cannot be empty' : '';
    _updateSaveState();
  }

  // Validate the verification password against the new password
  void validateVerify(String value) {
    verify_error.value = (value != newController.text)
        ? 'Passwords do not match'
        : '';
    _updateSaveState();
  }

  // Check if the fields are valid and update the save state
  void _updateSaveState() {
    has_changes.value =
        current_error.value.isEmpty &&
        new_error.value.isEmpty &&
        verify_error.value.isEmpty &&
        currentController.text.isNotEmpty &&
        newController.text.isNotEmpty &&
        verifyController.text.isNotEmpty;
  }

  // Confirms the password change and shows a success message
  void saveChanges() {
    Get.snackbar(
      'Profile Update',
      'Your changes have been saved successfully.',
      snackPosition: SnackPosition.TOP,
      duration: const Duration(seconds: 2),
    );
    // Disable the save button after saving
    has_changes.value = false;
  }

}
