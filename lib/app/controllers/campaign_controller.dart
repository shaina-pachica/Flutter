import 'package:get/get.dart';

class CampaignController extends GetxController {
  var selectedTab = 'Application'.obs; // default tab
  var applicationCount = 1.obs;
  var inProgressCount = 0.obs;
  var completeCount = 3.obs;

  void selectTab(String tab) {
    selectedTab.value = tab;
  }
}
