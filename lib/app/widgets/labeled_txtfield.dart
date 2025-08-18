import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String? errorText;
  final bool readOnly;
  final Function(String)? onChanged;
  final VoidCallback? onIconPressed;

  // Button
  final String? buttonText;
  final VoidCallback? onButtonPressed;

  const LabeledTextField({
    super.key,
    required this.label,
    required this.controller,
    this.onIconPressed,
    this.errorText,
    this.readOnly = false, 
    this.onChanged,
    this.buttonText,
    this.onButtonPressed,
    
  });

  @override
  Widget build(BuildContext context) {
    final readOnlyFill = const Color(0xFFF2F2F2);
    final readOnlyTextColor = Colors.grey.shade600;

    OutlineInputBorder borderStyle(Color color) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1),
    );

    // Main text field widget where the label, controller, and other properties are applied
    // If readOnly is true, the text field will have a different style
    // If a button is provided, it will be wrapped in a Row with the text field

    Widget textField = TextField(
      controller: controller,
      readOnly: readOnly,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: readOnly ? readOnlyFill : Colors.white,
        border: borderStyle(readOnly ? readOnlyFill : Colors.grey.shade400),
        enabledBorder: borderStyle(
          readOnly ? readOnlyFill : Colors.grey.shade400,
        ),
        focusedBorder: borderStyle(
          readOnly ? readOnlyFill : const Color.fromARGB(255, 32, 84, 126),
        ),
        errorBorder: borderStyle(Colors.red.shade300),
        focusedErrorBorder: borderStyle(Colors.red.shade400),
        errorText: errorText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
  
      // Only show the suffix icon if onIconPressed is provided
      suffixIcon: onIconPressed != null
          ? IconButton(
              icon: const Icon(Icons.attach_file, color: Colors.grey),
              onPressed: onIconPressed,
            )
          : null,
      ),

      style: TextStyle(color: readOnly ? readOnlyTextColor : Colors.black),
    );

    // If a button is provided, wrap the text field in a Row
    if (buttonText != null && onButtonPressed != null) {
      textField = Row(
        children: [
          Flexible(child: textField),
          const SizedBox(width: 8),
          SizedBox(
            height: 52,
            child: ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.purple,
              ),
              child: Text(buttonText!, style: const TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 4),
        textField,
      ],
    );
  }
}
