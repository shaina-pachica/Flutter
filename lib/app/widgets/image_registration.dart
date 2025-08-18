import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Importing image picker for image registration


class ImageRegistration extends StatelessWidget {
  const ImageRegistration({super.key});

  Future<void> _pickImage(BuildContext context, ImageSource source) async {
    final picker = ImagePicker();
    await picker.pickImage(source: source); 
    // ❗ handle image storage or upload later
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text("Take a photo"),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(context, ImageSource.camera);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text("Choose from gallery"),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(context, ImageSource.gallery);
                  },
                ),
              ],
            ),
          );
        },
        child: Column(
          children: const [
            CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFFF2F2F2),
              child: Icon(Icons.person, size: 40, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              "Image registration",
              style: TextStyle(color: Color(0xFF878787), fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
