import 'package:get/get.dart';

import '../controllers/paymentList_page_controller.dart';

class PaymentListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentListPageController>(
      () => PaymentListPageController(),
    );
  }
}
