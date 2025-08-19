import 'package:get/get.dart';
import 'package:myflyn_app/app/routes/app_pages.dart';

class CampaignController extends GetxController {
  var applicationCount = 0.obs;
  var inProgressCount = 0.obs;
  var completeCount = 2.obs;
  

  var selectedIndex = 0.obs;
  void goToCampaignView() {
    Get.toNamed(Routes.campaign); // route for CampaignView
  }
}
