import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback? onPressed;
  final String label;

  const SaveButton({
    super.key,
    required this.enabled,
    required this.onPressed,
    this.label = "Save",
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: enabled ? Colors.purple : Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        minimumSize: const Size(double.infinity, 52),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}

