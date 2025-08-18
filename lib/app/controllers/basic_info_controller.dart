import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BasicInformationController extends GetxController {
  // Example: user info variables
  var name = 'Hong Gil-dong'.obs;
  var email = 'hong.gildong@email.com'.obs;

  // Methods to update info
  void updateName(String newName) => name.value = newName;
  void updateEmail(String newEmail) => email.value = newEmail;
}
