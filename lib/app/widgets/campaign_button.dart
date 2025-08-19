import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CampaignButton extends StatelessWidget {
  final String label;
  final int count;
  final String route;
  final VoidCallback? onTap;

  const CampaignButton({
    super.key,
    required this.label,
    required this.count,
    required this.route,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap ?? () => Get.toNamed(route),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                '$count',
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF8130EF),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                label,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
