import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'campaign_tile.dart';
import 'package:myflyn_app/app/controllers/campaign_controller.dart';

class CampaignTabs extends StatelessWidget {
  const CampaignTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CampaignController>();

    return Column(
      children: [
       Obx(() => 
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _tabButton(controller, 0, "Application",),
          _tabButton(controller, 1, "In Progress",),
          _tabButton(controller, 2, "Completed",),
      ]
      )),


        Expanded(
          child: Obx(() {
            switch (controller.selectedIndex.value) {
              case 0:
                return _buildCampaignList("In Progress");
              case 1:
                return _buildCampaignList("Completed");
              case 2:
                return _buildCampaignList("Drafts");
              default:
                return Container();
            }
          }),
        ),
      ],
    );
  }

  Widget _buildCampaignList(String type) {
    return ListView(
      children: [
        CampaignTile(
          imageUrl: "https://placehold.co/100x100/png?text=${type[0]}A",
          companyName: "$type Campaign A",
          description: "This is a $type campaign...",
          tags: ["F & B", "Fashion", "Lifestyle"],
          onTap: () {
            // Handle tap for campaign A
           Get.snackbar(
              "Campaign A",
              "You tapped on $type Campaign A",
              snackPosition: SnackPosition.TOP,
            );
          },
        ),
      ],
    );
  }

   Widget _tabButton(CampaignController controller, int index, String text) {
    final isSelected = controller.selectedIndex.value == index;
    return GestureDetector(
      onTap: () => controller.selectedIndex.value = index,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.deepPurple : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.deepPurple : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

}
