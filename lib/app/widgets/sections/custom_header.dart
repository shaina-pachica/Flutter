import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String title;

  const CustomHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Back button
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF2E2E2E)),
            onPressed: () => Navigator.pop(context),
          ),
          // Title below
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontFamily: "ABeeZee",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2E2E2E),
            ),
          ),
        ],
      ),
    );
  }
}
