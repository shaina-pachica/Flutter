import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final RxBool showToggle;
  final String placeholder;
  final RxString error; // reactive error
  final Function(String)? onChanged;

  const PasswordTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.showToggle,
    required this.error,
    this.placeholder = '',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder borderStyle(Color color) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: color, width: 1),
        );

    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                ' *',
                style: TextStyle(color: Color(0xFFEF8030), fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 4),
          TextField(
            controller: controller,
            obscureText: !showToggle.value,
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: borderStyle(Colors.grey.shade400),
              enabledBorder: borderStyle(Colors.grey.shade400),
              focusedBorder: borderStyle(Colors.blue.shade400),
              errorBorder: borderStyle(Colors.red.shade300),
              focusedErrorBorder: borderStyle(Colors.red.shade400),
              errorText: error.value.isNotEmpty ? error.value : null,
              hintText: placeholder,
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  showToggle.value ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () => showToggle.value = !showToggle.value,
              ),
            ),
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.text,
          ),
        ],
      );
    });
  }
}
