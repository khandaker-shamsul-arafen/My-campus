import 'package:get/get.dart';

import '../controllers/seventh_page_controller.dart';

class SeventhPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeventhPageController>(
      () => SeventhPageController(),
    );
  }
}
