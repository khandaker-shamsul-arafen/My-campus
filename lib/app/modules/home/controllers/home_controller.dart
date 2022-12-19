import 'package:get/get.dart';

import '../../../core/model/college_model.dart';

class HomeController extends GetxController {
  var collegeList = <CollegeModel>[].obs;

  @override
  void onInit() {
    collegeList
        .add(CollegeModel("Titumir College", 'assets/titumir_college.png'));
    collegeList.add(CollegeModel("BAF Shaheen", 'assets/baf_shaheen.png'));
    collegeList.add(
        CollegeModel("Govt. Keshab chandra College", 'assets/chandra.png'));

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
}
