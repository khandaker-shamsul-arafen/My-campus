import 'package:get/get.dart';

import '../controllers/fifth_page_controller.dart';

class FifthPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FifthPageController>(
      () => FifthPageController(),
    );
  }
}
