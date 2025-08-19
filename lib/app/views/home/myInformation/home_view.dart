import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myflyn_app/app/routes/app_pages.dart';

import 'package:myflyn_app/app/widgets/campaign_card.dart';
import '../../../widgets/sections/profile_header.dart';
import '../../../widgets/clickables/menu_item.dart'; //MenuItem widget for the menu items
import '../../../widgets/picker/image_registration.dart'; // Image registration widget

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
              Padding(padding: 
                const EdgeInsets.fromLTRB(20, 87, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileHeader(username: username),
                    const ImageRegistration()
                  ]  
                ),
              ),
              const SizedBox(height: 20),
              //const CampaignCard(), // Campaign summary widget
              const SizedBox(height: 20),
              MenuItem(
                title: "My information",
                on_tap: () => Get.toNamed(Routes.myInformation),
                leading_icon: Icon(Icons.person_outline),
              ),
              MenuItem(
                title: "Announcement",
                leading_icon: Icon(Icons.announcement_outlined),
                on_tap: () {
                  // TODO: connect to Announcement view
                },
              ),
              MenuItem(
                title: "1:1 Inquiry",
                leading_icon: Icon(Icons.forum_outlined),
                on_tap: () {
                  // TODO: connect to Inquire view
                },
              ),
              MenuItem(
                title: "FAQ",
                leading_icon: Icon(Icons.help_outline),
                on_tap: () {
                  // TODO: connect to FAQ vziew
                },
              ),
              MenuItem(
                title: "Terms and Conditions and Policy",
                leading_icon: Icon(Icons.description_outlined),
                on_tap: () {
                  // TODO: connect to TCP view
                },
              ),
              MenuItem(
                title: "Logout",
                leading_icon: Icon(Icons.logout_outlined),
                on_tap: () {
                  // TODO: connect to Logout view
                },
              ),
              MenuItem(
                title: "Membership Withdrawal",
                leading_icon: Icon(Icons.person_remove_outlined),
                on_tap: () {
                  // TODO: connect to MW view
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
