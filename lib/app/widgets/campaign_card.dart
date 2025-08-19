import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'campaign_button.dart';
import '../controllers/campaign_controller.dart';

class CampaignCard extends StatelessWidget {
  const CampaignCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CampaignController>();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFC),
        border: Border.all(color: const Color(0xFFF2F2F2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("My Campaign",
              style: TextStyle(fontSize: 12, color: Color(0xFF2E2E2E))),
          const SizedBox(height: 8),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CampaignButton(
                    label: "Application",
                    count: controller.applicationCount.value,
                    route: "/campaign",
                    onTap: controller.goToCampaignView

                  ),
                  CampaignButton(
                    label: "In Progress",
                    count: controller.inProgressCount.value,
                    route: "/campaign",
                    onTap: controller.goToCampaignView

                  ),
                  CampaignButton(
                    label: "Complete",
                    count: controller.completeCount.value,
                    route: "/campaign",
                   onTap: controller.goToCampaignView

                  ),
                ],
              )),
        ],
      ),
    );
  }
}
