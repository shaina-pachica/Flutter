import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/password_controller.dart';

class PasswordButtonRow extends StatelessWidget {
  final PasswordController controller;

  const PasswordButtonRow({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: controller.is_saved_enabled.value
                  ? controller.savePassword
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                disabledBackgroundColor: Colors.grey.shade400,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
