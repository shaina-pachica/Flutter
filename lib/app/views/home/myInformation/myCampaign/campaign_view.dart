import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/controllers/campaign_controller.dart';
import 'package:myflyn_app/app/widgets/campaign_card.dart';


class CampaignSummaryView extends StatelessWidget {
  const CampaignSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CampaignController());

    return Scaffold(
      body: Obx(() => ListView(
            children: [
              CampaignCard(
                applicationCount: controller.applicationCount.value,
                inProgressCount: controller.inProgressCount.value,
                completeCount: controller.completeCount.value,
                onTabSelected: controller.selectTab, // reactive callback
              ),
              const SizedBox(height: 20),
              Text(
                'Selected Tab: ${controller.selectedTab.value}',
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
