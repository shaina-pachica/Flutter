import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/widgets/sections/custom_frame.dart';
import 'package:myflyn_app/app/widgets/inputfields/password_txtfld.dart';
import '../../../../controllers/password_controller.dart';

class PasswordSettingView extends StatelessWidget {
  const PasswordSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PasswordController());

    return CustomFrame(
      title: 'Password Setting',
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          PasswordTextField(
            label: 'Basic Password',
            placeholder:
                '8-16 digits English, numbers, special character combination',
            controller: controller.currentController,
            showToggle: controller.show_current,
            error: controller.new_error,
            onChanged: controller.validateCurrent,
          ),

          const SizedBox(height: 16),

          PasswordTextField(
            label: 'New Password',
            placeholder:
                '8-16 digits English, numbers, special character combination',
            controller: controller.newController,
            showToggle: controller.show_new,
            error: controller.new_error,
            onChanged: controller.validateNew,
          ),

          const SizedBox(height: 16),

          PasswordTextField(
            label: 'Verify Password',
            placeholder: 'Please re-enter your new password',
            controller: controller.verifyController,
            showToggle: controller.show_verify,
            error: controller.verify_error,
            onChanged: controller.validateVerify,
          ),

          const SizedBox(height: 32),

          Obx(
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
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: controller.cancel,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
