
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback on_tap;
  final Icon? leading_icon; // make nullable

  const MenuItem({
    super.key,
    required this.title,
    required this.on_tap,
    this.leading_icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: on_tap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE0E0E0)),
        ),
        child: Row(
          children: [
            if (leading_icon != null)
              Icon(
                leading_icon!.icon,
                size: 24,
                color: const Color(0xFF2E2E2E),
              ),
            if (leading_icon != null) const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF2E2E2E),
                fontSize: 14,
                fontFamily: 'ABeeZee',
                fontWeight: FontWeight.w400,
                height: 1.40,
                letterSpacing: -0.28,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
