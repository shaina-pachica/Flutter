import 'package:get/get.dart'; // Importing GetX for state management
import 'package:myflyn_app/app/bindings/basic_info_binding.dart';
import 'package:myflyn_app/app/bindings/campaign_binding.dart';
import 'package:myflyn_app/app/bindings/password_setting_binding.dart';
import 'package:myflyn_app/app/bindings/splash_binding.dart';
import 'package:myflyn_app/app/views/home/myInformation/myCampaign/campaign_view.dart';
import 'package:myflyn_app/app/views/home/myInformation/myInformation/basic_info_view.dart';
import 'package:myflyn_app/app/views/home/myInformation/myInformation/password_setting_view.dart';
import 'package:myflyn_app/app/views/splash_view.dart';

// Importing views for routing
import '../views/home/myInformation/home_view.dart';
import '../views/home/myInformation/myInformation/my_info_view.dart';

// Importing bindings for dependency injection
import '../bindings/my_info_binding.dart'; // Binding for My Information

part 'app_routes.dart';

class AppPages {
  static final routes = [
    // Define the initial route for the application
    GetPage(
      name: Routes.splash, // Splash screen route',
      page: () => const SplashView(), // Splash screen view
      binding: SplashBinding(), // Binding for SplashController
    ),
    GetPage(name: Routes.home, page: () => const HomeView()),
    GetPage(
      name: '/my_information',
      page: () => const MyInformationView(),
      binding: MyInformationBinding(), // Binding for My Information
    ),
    GetPage(
      name: Routes.basicInformation,
      page: () => const BasicInfoView(),
      binding: BasicInformationBinding(), // Binding for Basic Information
    ),
    GetPage(
      name: Routes.passwordSetting,
      page: () => const PasswordSettingView(),
      binding: PasswordSettingBinding(), // Binding for Password Setting
    ),
    GetPage(
      name: '/campaign_summary_view',
      page: () => const CampaignView(),
      binding: CampaignBinding(), // Binding for CampaignController
    ),
    
  ];
}
