import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../AppBar.dart';
import '../../../../constants/app_constraints.dart';
import '../../../../constants/app_text_style.dart';
import '../controllers/client_details_controller.dart';

class ClientDetailsView extends GetView<ClientDetailsController> {
  const ClientDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(false),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Our Clients",
                style: textButtonColor145Font(
                    fontSize: 16, color: const Color(0xFF1C1C1C)),
              ),
            ),
            Obx(() {
              return Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: controller.clientController.collegeList.length,
                    itemBuilder: (BuildContext wr, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 6,
                                  offset: const Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 80.h,
                            width: 100.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: leftMainPadding.w,
                                vertical: Padding12.h),
                            child: Image.asset(
                              controller
                                  .clientController.collegeList[index].image,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0.h),
                            child: Text(
                              controller
                                  .clientController.collegeList[index].name,
                              style: textHintColor124Font(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    }),
              );
            }),
          ],
        ),
      ),
    );
  }
}
