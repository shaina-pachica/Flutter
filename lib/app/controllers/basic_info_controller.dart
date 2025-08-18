// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class BasicInformationController extends GetxController {
  // Text controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController instagramController = TextEditingController();
  final TextEditingController portfolioController = TextEditingController();
  final TextEditingController linkController = TextEditingController();

  // Initial values for text fields
  late String initial_name;
  late String initial_email;
  late String initial_phone;
  late String initial_nickname;
  late String initial_instagram;
  late String initial_portfolio;

  // Track if any changes have been made
  var has_changes = false.obs;

  // Read-only ID
  final String id = 'ASDF123';

  // Reactive variables for error messages
  var email_error = ''.obs;
  var phone_error = ''.obs;
  var nickname_error = ''.obs;
  var instagram_error = ''.obs;
  var link_error = ''.obs;

  /// *** METHODS

  // Initialize any reactive variables or listeners here if needed
  @override
  void onInit() {
    super.onInit();

    // Set initial values for text fields
    initial_name = nameController.text;
    initial_email = emailController.text; 
    initial_phone = phoneController.text;
    initial_nickname = nicknameController.text;
    initial_instagram = instagramController.text;
    initial_portfolio = portfolioController.text;

    // Add listeners to text controllers
    nameController.addListener(_onFieldChanged);
    emailController.addListener(_onFieldChanged);
    phoneController.addListener(_onFieldChanged);
    nicknameController.addListener(_onFieldChanged);
    instagramController.addListener(_onFieldChanged);
    linkController.addListener(_onFieldChanged);
    portfolioController.addListener(_onFieldChanged);
  }

  // Set isChanged to true if any field is different from its initial value
  // For simplicity, just set true if any controller is non-empty
  void _onFieldChanged() {
    has_changes.value =
        nameController.text.isNotEmpty ||
        emailController.text.isNotEmpty ||
        phoneController.text.isNotEmpty ||
        nicknameController.text.isNotEmpty ||
        instagramController.text.isNotEmpty ||
        portfolioController.text.isNotEmpty;
  }

  void saveChanges() {
    // Implement your save logic here
    Get.snackbar(
        'Profile Update',
        'Your changes have been saved successfully.',
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
      );

    // Update initial values after save
    initial_name = nameController.text;
    initial_email = emailController.text;
    initial_phone = phoneController.text; 
    initial_nickname = nicknameController.text;
    initial_instagram = instagramController.text;
    initial_portfolio = portfolioController.text;
    
    has_changes.value = false; // Reset button state
  }

  

  // Update functions
  void updateEmail(String value) {
    // Simple email validation
    if (!GetUtils.isEmail(value)) {
      email_error.value = 'Invalid email format';
    } else {
      email_error.value = '';
    }
  }

  void updatePhone(String value) {
    final regex = RegExp(r'^010\d{8}$');
    if (!regex.hasMatch(value)) {
      phone_error.value = 'Format: 01012341234';
    } else {
      phone_error.value = '';
    }
  }

  void updateNickname(String value) {
    // Optional
    if (value.trim().isNotEmpty) {
      final regex = RegExp(r'^[a-zA-Z\s]+$'); // only letters and spaces
      if (!regex.hasMatch(value.trim())) {
        nickname_error.value = 'Nickname can only contain letters';
        return;
      }
    }
    nickname_error.value = '';
  }

  void updateInstagram(String value) {
    // Must start with '@' followed by letters, numbers, underscores, or dots
    final regex = RegExp(r'^@[\w.]+$');
    if (!regex.hasMatch(value)) {
      instagram_error.value =
          'Instagram ID must start with @ and contain only letters, numbers, underscores, or dots';
    } else {
      instagram_error.value = '';
    }
  }

  void updateLink(String value) {
    // Simple URL validation
    final regex = RegExp(
      r'^(https?:\/\/)?([\w-]+(\.[\w-]+)+)(\/[\w- .\/?%&=]*)?$',
    );
    if (!regex.hasMatch(value)) {
      link_error.value = 'Invalid URL format';
    } else {
      link_error.value = '';
    }
  }

  void updatePortfolio(String value) {
    portfolioController.text = value;
  }

  // File picker for portfolio
  /// Opens a file picker to select a portfolio file.
  void pickPortfolioFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx', 'txt'],
    );

    if (result != null) {
      updatePortfolio(result.files.first.name);
      Get.snackbar(
        'File Picker',
        'File Successfully selected: ${result.files.first.name}',
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
      );
    } else {
      // User canceled the picker
      Get.snackbar(
        'File Picker',
        'No file selected',
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
      );
    }
  }
}
