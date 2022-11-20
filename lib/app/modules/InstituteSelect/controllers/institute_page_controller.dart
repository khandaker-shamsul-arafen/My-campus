import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';

class InstitutePageController extends GetxController {
  //TODO: Implement SecondPageControlle
  //List<String> options = <String>['One', 'Two', 'Free', 'Four'];
  var homeController = Get.find<HomeController>();

  var dropdownValue = "Select your Institute".obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
