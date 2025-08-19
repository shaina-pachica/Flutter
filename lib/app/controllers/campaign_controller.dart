import 'package:get/get.dart';

class CampaignController extends GetxController {
  var selectedTab = 'Application'.obs; // default tab
  var applicationCount = 0.obs;
  var inProgressCount = 0.obs;
  var completeCount = 0.obs;

  void selectTab(String tab) {
    selectedTab.value = tab;
  }
}
