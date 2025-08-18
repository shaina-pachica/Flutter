// view when "basic information" menu item is clicked

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/widgets/custom_frame.dart';
import 'package:myflyn_app/app/widgets/labeled_txtfield.dart';
import '../../controllers/basic_info_controller.dart';

class BasicInfoView extends StatelessWidget {
  const BasicInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final BasicInformationController controller = Get.put(
      BasicInformationController(),
    );

    return CustomFrame(
      title: "Basic Information",
      child: ListView(
        children: [
          // ID field (read-only)
          LabeledTextField(
            label: 'ID',
            controller: TextEditingController(text: controller.id),
            readOnly: true,
          ),

          const SizedBox(height: 16),

          // Email field
          Obx(
            () => LabeledTextField(
              label: 'Email',
              controller: controller.emailController,
              errorText: controller.email_error.value.isNotEmpty
                  ? controller.email_error.value
                  : null,
              onChanged: controller.updateEmail,
            ),
          ),

          const SizedBox(height: 16),

          // Phone number field with button
          Obx(
            () => LabeledTextField(
              label: 'Phone Number',
              controller: controller.phoneController,
              errorText: controller.phone_error.value.isNotEmpty
                  ? controller.phone_error.value
                  : null,
              onChanged: controller.updatePhone,
              buttonText: 'Change',
              onButtonPressed: () {
                // Handle change phone number logic here
                Get.snackbar(
                  'Phone Verification',
                  'Authentication number sent!',
                  snackPosition: SnackPosition.TOP,
                  duration: const Duration(seconds: 2),
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          // Name field
          Obx(
            () => LabeledTextField(
              label: 'Nickname',
              controller: controller.nicknameController,
              errorText: controller.nickname_error.value.isNotEmpty
                  ? controller.nickname_error.value
                  : null,
              onChanged: controller.updateNickname,
            ),
          ),

          const SizedBox(height: 16),

          // Instagram field
          Obx(
            () => LabeledTextField(
              label: 'Instagram',
              controller: controller.instagramController,
              errorText: controller.instagram_error.value.isNotEmpty
                  ? controller.instagram_error.value
                  : null,
              onChanged: controller.updateInstagram,
            ),
          ),

          const SizedBox(height: 16),

          // Link field for representative work
          Obx(
            () => LabeledTextField(
              label: 'Representative Work Link',
              controller: controller.linkController,
              errorText: controller.link_error.value.isNotEmpty
                  ? controller.link_error.value
                  : null,
              onChanged: controller.updateLink,
            ),
          ),

          const SizedBox(height: 16),

          // Portfolio field with file picker
          LabeledTextField(
            label: 'Portfolio',
            controller: controller.portfolioController,
            onIconPressed: controller.pickPortfolioFile,
          ),

          const SizedBox(height: 25),

          Obx(() => ElevatedButton(
      onPressed: controller.has_changes.value ? controller.saveChanges : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: controller.has_changes.value ? Colors.purple : Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: const Size(double.infinity, 52),
      ),
      child: const Text(
        "Save",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    )),


          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
