import 'package:get/get.dart';

import '../controllers/invoice_page_controller.dart';

class SeventhPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeventhPageController>(
      () => SeventhPageController(),
    );
  }
}
