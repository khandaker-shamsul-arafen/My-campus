import 'package:get/get.dart';

import '../controllers/fourth_page_controller.dart';

class FourthPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FourthPageController>(
      () => FourthPageController(),
    );
  }
}
