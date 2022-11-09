import 'package:get/get.dart';

import '../controllers/sixth_page_controller.dart';

class SixthPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SixthPageController>(
      () => SixthPageController(),
    );
  }
}
