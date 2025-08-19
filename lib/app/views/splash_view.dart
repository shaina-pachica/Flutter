import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF430C7E),
      child: Center(
        child: Text(
          'MY FLYN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
