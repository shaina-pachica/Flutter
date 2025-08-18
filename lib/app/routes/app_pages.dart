import 'package:get/get.dart'; // Importing GetX for state management
import 'package:myflyn_app/app/bindings/basic_info_binding.dart';
import 'package:myflyn_app/app/bindings/password_setting_binding.dart';
import 'package:myflyn_app/app/views/myInformation/basic_info_view.dart';
import 'package:myflyn_app/app/views/myInformation/password_setting_view.dart';


// Importing views for routing
import '../views/home_view.dart';
import '../views/myInformation/my_info_view.dart';

// Importing bindings for dependency injection
import '../bindings/my_info_binding.dart'; // Binding for My Information

part 'app_routes.dart';

class AppPages {
  static const initial = '/home';
  static const basicInfo = '/basic-info'; // Initial route for the app);

  static final routes = [
    // Define the routes for the application
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
  ];
}
