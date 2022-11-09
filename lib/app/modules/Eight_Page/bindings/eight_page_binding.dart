import 'package:get/get.dart';

import '../controllers/eight_page_controller.dart';

class EightPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EightPageController>(
      () => EightPageController(),
    );
  }
}
