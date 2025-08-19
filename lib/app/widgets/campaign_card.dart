import 'package:flutter/material.dart';
import 'campaign_button.dart';

class CampaignCard extends StatelessWidget {
  final int applicationCount;
  final int inProgressCount;
  final int completeCount;
  final Function(String tab) onTabSelected;

  const CampaignCard({
    super.key,
    this.applicationCount = 0,
    this.inProgressCount = 0,
    this.completeCount = 0,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
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
          const Text(
            "My Campaign",
            style: TextStyle(fontSize: 12, color: Color(0xFF2E2E2E)),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CampaignButton(
                count: applicationCount.toString(),
                label: "Application",
                onTap: () => onTabSelected("Application"),
              ),
              CampaignButton(
                count: inProgressCount.toString(),
                label: "In Progress",
                onTap: () => onTabSelected("In Progress"),
              ),
              CampaignButton(
                count: completeCount.toString(),
                label: "Complete",
                onTap: () => onTabSelected("Complete"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
