import 'package:get/get.dart'; // Importing GetX for state management

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
    
  ];
}
