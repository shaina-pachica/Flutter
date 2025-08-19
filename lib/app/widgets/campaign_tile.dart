import 'package:flutter/material.dart';

class CampaignTile extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final String description;
  final List<String> tags;
  final VoidCallback onTap;

  const CampaignTile({
    super.key,
    required this.imageUrl,
    required this.companyName,
    required this.description,
    required this.tags,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        companyName,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Wrap(
            spacing: 6,
            runSpacing: -8,
            children: tags
                .map(
                  (tag) => Chip(
                    label: Text(
                      tag,
                      style: const TextStyle(fontSize: 10),
                    ),
                    backgroundColor: const Color(0xFFF8F3FE),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
