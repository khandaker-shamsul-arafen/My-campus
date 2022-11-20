import 'package:get/get.dart';

import '../controllers/institute_page_controller.dart';

class InstitutePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InstitutePageController>(
      () => InstitutePageController(),
    );
  }
}
