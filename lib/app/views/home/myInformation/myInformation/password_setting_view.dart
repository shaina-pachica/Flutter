import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/widgets/clickables/save_btn.dart';
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
        children: [
          PasswordTextField(
            label: 'Basic Password',
            placeholder:
                '8-16 digits English, numbers, special character combination',
            controller: controller.currentController,
            showToggle: controller.show_current,
            error: controller.current_error,
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
            () => SaveButton(
              enabled: controller.has_changes.value,
              onPressed: controller.saveChanges,
              label: 'Save Changes',
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
