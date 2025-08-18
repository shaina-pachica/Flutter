import 'package:get/get.dart';
import 'package:myflyn_app/app/routes/app_pages.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.home); // Auto navigate to Home
    });
  }
}
