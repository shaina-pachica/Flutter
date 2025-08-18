import 'package:get/get.dart';
import 'package:flutter/material.dart';

class BasicInformationController extends GetxController {
  // Text controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController instagramController = TextEditingController();
  final TextEditingController portfolioController = TextEditingController();
  final TextEditingController linkController = TextEditingController();

  // Read-only ID
  final String id = 'ASDF123';

  // Example: user info variables
  var emailError = ''.obs;
  var phoneError = ''.obs;
  var nicknameError = ''.obs;
  var instagramError = ''.obs;
  var linkError = ''.obs;

  // Methods to update info

  // Update functions
  void updateEmail(String value) {
    // Simple email validation
    if (!GetUtils.isEmail(value)) {
      emailError.value = 'Invalid email format';
    } else {
      emailError.value = '';
    }
  }

  void updatePhone(String value) {
    final regex = RegExp(r'^010\d{8}$');
    if (!regex.hasMatch(value)) {
      phoneError.value = 'Format: 01012341234';
    } else {
      phoneError.value = '';
    }
  }

  void updateNickname(String value) {
    // Optional
    if (value.trim().isNotEmpty) {
      final regex = RegExp(r'^[a-zA-Z\s]+$'); // only letters and spaces
      if (!regex.hasMatch(value.trim())) {
        nicknameError.value = 'Nickname can only contain letters';
        return;
      }
    }
    nicknameError.value = '';
  }

  void updateInstagram(String value) {
    // Must start with '@' followed by letters, numbers, underscores, or dots
    final regex = RegExp(r'^@[\w.]+$');
    if (!regex.hasMatch(value)) {
      instagramError.value =
          'Instagram ID must start with @ and contain only letters, numbers, underscores, or dots';
    } else {
      instagramError.value = '';
    }

   

    void updatePortfolio(String value) {
      portfolioController.text = value;
    }

    // Placeholder function for file picker
    void pickPortfolioFile() {
      // In real app, implement file picker
      updatePortfolio('NewPortfolio.pdf');
    }
  }
}
