import 'package:get/get.dart';

import '../controllers/invoice_page_controller.dart';

class SixthPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SixthPageController>(
      () => SixthPageController(),
    );
  }
}
