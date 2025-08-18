import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/campaign_summary.dart';
import '../widgets/menu_item.dart'; //MenuItem widget for the menu items
import '../widgets/image_registration.dart'; // Image registration widget

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final String username = "Hong Gil-dong"; // ❗ highlight: dynamic username

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ProfileHeader(username: username),
              const SizedBox(height: 20),
              const ImageRegistration(),
              const SizedBox(height: 20),
              const CampaignSummary(),

          
              const MenuItemWidget(title: "My Information", route: "/info"),
              const MenuItemWidget(title: "Announcement", route: "/announcement"),
              const MenuItemWidget(title: "1:1 Inquiry", route: "/inquiry"),
              const MenuItemWidget(title: "FAQ", route: "/faq"),  
              const MenuItemWidget(title: "Terms and Conditions and Policy", route: "/terms"),
              const MenuItemWidget(title: "Log out", route: "/logout"),
              const MenuItemWidget(title: "Membership Withdrawal", route: "/withdraw")
            ],
          )
        ],
      ),
    );
  }

  
}
