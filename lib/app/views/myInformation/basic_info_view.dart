// view when "basic information" menu item is clicked

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/widgets/custom_frame.dart';
import '../../controllers/basic_info_controller.dart';

class BasicInfoView extends StatelessWidget {
  const BasicInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BasicInformationController controller = Get.put(BasicInformationController());

    return CustomFrame(
      title: "Basic Information",
      child: ListView(
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Name'),
            onChanged: controller.updateName,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: const InputDecoration(labelText: 'Email'),
            onChanged: controller.updateEmail,
          ),
        ],
      ),
    );
  }
}