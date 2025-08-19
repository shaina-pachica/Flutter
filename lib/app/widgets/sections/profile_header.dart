import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String username;

  const ProfileHeader({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 87, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "hello,",
                style: TextStyle(fontSize: 20, color: Color(0xFF2E2E2E)),
              ),
              Text(
                username, // ❗ username
                style: const TextStyle(
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF2E2E2E),
                ),
              ),
            ],
          ),

          
        ],
      ),
    );
  }
}
