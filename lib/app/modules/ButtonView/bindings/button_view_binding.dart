import 'package:get/get.dart';

import '../controllers/button_view_controller.dart';

class ButtonViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonViewController>(
      () => ButtonViewController(),
    );
  }
}
