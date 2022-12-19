import 'package:get/get.dart';

import '../../../core/model/fee_model.dart';

class PaymentListPageController extends GetxController {
  //TODO: Implement ThirdPageController
  var fees = <FeeModel>[].obs;

  final count = 0.obs;

  @override
  void onInit() {
    fees.add(FeeModel("Monthly Tution Fee", 5000));
    fees.add(FeeModel("Yearly Admission Fee", 4000));
    fees.add(FeeModel("Monthly Tution Fee", 5000));
    fees.add(FeeModel("Yearly Admission Fee", 4000));
    fees.add(FeeModel("Monthly Tution Fee", 5000));
    fees.add(FeeModel("Monthly Tution Fee", 5000));
    fees.add(FeeModel("Monthly Tution Fee", 5000));

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
