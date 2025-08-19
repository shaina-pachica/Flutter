import 'package:flutter/material.dart';
import 'package:myflyn_app/app/widgets/sections/custom_header.dart';

class CustomFrame extends StatelessWidget {
  final String title;
  final Widget child;

  const CustomFrame({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            CustomHeader(title: title),
            const SizedBox(height: 20),

            // Main content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// This widget can be used to wrap other views with a consistent header and padding.