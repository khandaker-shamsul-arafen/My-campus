import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';

class ClientDetailsController extends GetxController {
  //TODO: Implement ClientDetailsController
  var clientController = Get.find<HomeController>();

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
