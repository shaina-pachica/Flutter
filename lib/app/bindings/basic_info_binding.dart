import 'package:get/get.dart';
import '../controllers/basic_info_controller.dart';

class BasicInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasicInformationController>(() => BasicInformationController());
  }
}
