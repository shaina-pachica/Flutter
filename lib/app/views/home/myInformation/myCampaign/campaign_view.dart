import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/controllers/campaign_controller.dart';
import 'package:myflyn_app/app/widgets/sections/custom_frame.dart';

class CampaignView extends StatelessWidget {
  const CampaignView({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<CampaignController>();

    return DefaultTabController(
      length: 3, // 3 tabs
      child: CustomFrame(
        title: "My Campaigns",
        child: Column(
          children: [
            // --- Tab Bar ---
            const TabBar(
              labelColor: Colors.deepPurple,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.deepPurple,
              tabs: [
                Tab(text: "Application"),
                Tab(text: "In Progress"),
                Tab(text: "Completed"),
              ],
            ),

            // --- Tab Content ---
            Expanded(
              child: TabBarView(
                children: [
                  // In Progress Tab
                  ListView(
                    children: const [
                      ListTile(title: Text("Campaign 1 - In Progress")),
                      ListTile(title: Text("Campaign 2 - In Progress")),
                    ],
                  ),

                  // Completed Tab
                  ListView(
                    children: const [
                      ListTile(title: Text("Campaign 1 - Completed")),
                      ListTile(title: Text("Campaign 2 - Completed")),
                    ],
                  ),

                  // Drafts Tab
                  ListView(
                    children: const [
                      ListTile(title: Text("Campaign 1 - Draft")),
                      ListTile(title: Text("Campaign 2 - Draft")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
