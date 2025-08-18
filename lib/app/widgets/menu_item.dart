import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String route;

  const MenuItemWidget({
    super.key,
    required this.title,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE0E0E0)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'ABeeZee',
              fontStyle: FontStyle.italic,
              color: Color(0xFF2E2E2E),
            ),
          ),
        ),
      ),
    );
  }
}
