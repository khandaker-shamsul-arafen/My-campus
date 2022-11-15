import 'package:get/get.dart';

class SecondPageController extends GetxController {
  //TODO: Implement SecondPageController
  List<String> options = <String>['One', 'Two', 'Free', 'Four'];

  var dropdownValue = "".obs;
  final count = 0.obs;

  @override
  void onInit() {
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
