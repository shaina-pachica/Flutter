import 'package:flutter/material.dart';
// Importing views for routing
import '../views/announcement_view.dart';
import '../views/campaign_view.dart';
import '../views/faq_view.dart';
import '../views/home_view.dart';
import '../views/info_view.dart';
import '../views/inquiry_view.dart';
import '../views/logout_view.dart';
import '../views/terms_view.dart';
import '../views/withdraw_view.dart';

class AppPages {
  static const initial = '/';

  static final routes = {
    '/': (context) => const HomeView(),
    // '/campaign': (context) => const CampaignView(),
    // '/info': (context) => const InfoView(),
    // '/announcement': (context) => const AnnouncementView(),
    // '/inquiry': (context) => const InquiryView(),
    // '/faq': (context) => const FaqView(),
    // '/terms': (context) => const TermsView(),
    // '/logout': (context) => const LogoutView(),
    // '/withdraw': (context) => const WithdrawView(),
    
  };
}
