import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/controllers/campaign_controller.dart';
import 'package:myflyn_app/app/widgets/campaign_button.dart';
import 'package:myflyn_app/app/widgets/sections/custom_header.dart';


class CampaignSummaryView extends StatelessWidget {
  const CampaignSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CampaignController());

    return Scaffold(
     body: Column(
        children: [
          // Custom header
          const CustomHeader(title: 'My Campaign'),

          const SizedBox(height: 12),

          // Tab buttons
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CampaignButton(
                    label: 'Application',
                    count: controller.applicationCount.value.toString(),
                    isSelected: controller.selectedTab.value == 'Application',
                    onTap: () => controller.selectTab('Application'),
                  ),
                  CampaignButton(
                    label: 'In Progress',
                    count: controller.inProgressCount.value.toString(),
                    isSelected: controller.selectedTab.value == 'In Progress',
                    onTap: () => controller.selectTab('In Progress'),
                  ),
                  CampaignButton(
                    label: 'Complete',
                    count: controller.completeCount.value.toString(),
                    isSelected: controller.selectedTab.value == 'Complete',
                    onTap: () => controller.selectTab('Complete'),
                  ),
                ],
              )
            ),
        ],
      ),
    );
  }
}
