import 'package:flutter/material.dart';

class FilePicker extends StatelessWidget {
  final String fileName;
  final VoidCallback onUpload;

  const FilePicker({super.key, required this.fileName, required this.onUpload});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              filled: true,
              fillColor: Colors.white,
              hintText: fileName,
            ),
          ),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: onUpload,
          child: const Text('Upload'),
        ),
      ],
    );
  }
}
