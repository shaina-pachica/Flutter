import 'package:get/get.dart';
import '../controllers/password_controller.dart';

class PasswordSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PasswordController>(() => PasswordController());
  }
}
