import 'package:get/get.dart';
import '../controllers/my_info_controller.dart';

class MyInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyInformationController>(() => MyInformationController());
  }
}
