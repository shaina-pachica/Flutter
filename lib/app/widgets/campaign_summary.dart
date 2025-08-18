import 'package:flutter/material.dart';

class CampaignSummary extends StatelessWidget {
  const CampaignSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFCFCFC),
        border: Border.all(color: Color(0xFFF2F2F2)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("My campaign",
              style: TextStyle(fontSize: 12, color: Color(0xFF2E2E2E))),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _statusBox(context, "0", "Application"),
              _statusBox(context, "0", "In progress"),
              _statusBox(context, "0", "Complete"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statusBox(BuildContext context, String count, String label) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, "/campaign"), // 🔹 link to A1
      child: Column(
        children: [
          Text(count,
              style: const TextStyle(fontSize: 20, color: Color(0xFF8130EF))),
          Text(label, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
