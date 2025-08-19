import 'package:flutter/material.dart';
import 'package:myflyn_app/app/widgets/campaign_tabs.dart';
import 'package:myflyn_app/app/widgets/sections/custom_frame.dart';

class CampaignView extends StatelessWidget {
  const CampaignView({super.key});

  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      length: 3, // 3 tabs
      child: CustomFrame(title: "My Campaigns", child: CampaignTabs()),
    );
  }
}
