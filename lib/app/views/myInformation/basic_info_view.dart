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
              errorText: controller.emailError.value.isNotEmpty
                  ? controller.emailError.value
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
              errorText: controller.phoneError.value.isNotEmpty
                  ? controller.phoneError.value
                  : null,
              onChanged: controller.updatePhone,
              buttonText: 'Change',
              onButtonPressed: () {
                // Handle change phone number logic here
                Get.snackbar(
                  'Phone Verification',
                  'Authentication number sent!',
                  snackPosition: SnackPosition.BOTTOM,
                  duration: const Duration(seconds: 2),
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          Obx(
            () => LabeledTextField(
              label: 'Nickname',
              controller: controller.nicknameController,
              errorText: controller.nicknameError.value.isNotEmpty
                  ? controller.nicknameError.value
                  : null,
              onChanged: controller.updateNickname,
            ),
          ),

          const SizedBox(height: 16),

          Obx(
            () => LabeledTextField(
              label: 'Instagram',
              controller: controller.instagramController,
              errorText: controller.instagramError.value.isNotEmpty
                  ? controller.instagramError.value
                  : null,
              onChanged: controller.updateInstagram,
              
            ),
          ),

          const SizedBox(height: 16),

          Obx(
            () => LabeledTextField(
              label: 'Representative Work Link',
              controller: controller.linkController,
              errorText: controller.linkError.value.isNotEmpty
                  ? controller.linkError.value
                  : null,
              onChanged: controller.updateLink,
            ),
          ),

          const SizedBox(height: 16),

          // ❗ Portfolio, filepicker (insert here)
          LabeledTextField(
            label: 'Portfolio',
            controller: controller.portfolioController,
            onIconPressed: () {
              // Handle file picker logic here
              Get.snackbar(
                'File Picker',
                'Open file picker to select portfolio!',
                snackPosition: SnackPosition.BOTTOM,
                duration: const Duration(seconds: 2),
              );
            },
          ),
        ],
      ),
    );
  }
}
