import 'package:get/get.dart';
import 'package:myflyn_app/app/routes/app_pages.dart';

class CampaignController extends GetxController {
  var applicationCount = 0.obs;
  var inProgressCount = 0.obs;
  var completeCount = 2.obs;

  // // Reactive selected tab (optional if you want tab highlight)
  // var selectedTab = ''.obs;

  // //Call this method when a tab is selected
  // void selectTab(String tab, String route) {
  //   selectedTab.value = tab;
  //   Get.toNamed(route); // navigate to the corresponding view
  // }

  void goToCampaignView() {
    Get.toNamed(Routes.campaign); // route for CampaignView
  }
}
