import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/my_info_controller.dart';
import '../../widgets/menu_item.dart';
import '../../widgets/header_widget.dart';

class MyInformationView extends GetView<MyInformationController> {
  const MyInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomHeader(title: "My Information"),
          const SizedBox(height: 50),
          // Reusable widgets
          MenuItem(
            title: "Basic information",
            on_tap: () => Get.toNamed('/basic_information'),
          ),
          MenuItem(
            title: "Password setting",
            on_tap: () => Get.toNamed('/password_setting'),
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
