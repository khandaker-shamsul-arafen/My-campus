import 'package:get/get.dart';

import '../controllers/paymentMethod_page_controller.dart';

class PaymentMethodPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodPageController>(
      () => PaymentMethodPageController(),
    );
  }
}
