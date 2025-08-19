import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/widgets/sections/custom_frame.dart';
import '../../../../controllers/my_info_controller.dart';
import '../../../../widgets/clickables/menu_item.dart';

class MyInformationView extends GetView<MyInformationController> {
  const MyInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFrame(
      title: "My Information",
      child: ListView(
        children: [
          MenuItem(
            title: "Basic information",
            on_tap: () => Get.toNamed('/basic_information'),
          ),
          MenuItem(
            title: "Password setting",
            on_tap: () => Get.toNamed('/password_setting_view'),
          ),
          MenuItem(
            title: "Interest category",
            on_tap: () => Get.toNamed('/interest_category'),
          ),
        ],
      ),
    );
  }
}
