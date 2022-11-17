import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_text_style.dart';
import '../../Fifth_page/controllers/fifth_page_controller.dart';
import '../controllers/button_view_controller.dart';

class ButtonViewView extends GetView<ButtonViewController> {
  final String txt;
  final String page;
  final Color background_color;
  final Color border_coor;
  final Color txt_color;

  ButtonViewView({
    required this.txt,
    required this.page,
    required this.background_color,
    required this.border_coor,
    required this.txt_color,
  });

  @override
  Widget build(BuildContext context) {
    final flag = Get.put(FifthPageController());
    return Scaffold(
      body:

          // this.border_coor = const Color(0xFFA369BF),
          //   this.txt_color = const Color(0xFFA369BF),

          Obx(() {
        return SizedBox(
          height: 60.h,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: (flag.flagbkash.value)
                    ? const Color(0xFFA150DF)
                    : (flag.flagekpay.value)
                        ? const Color(0xFFA150DF)
                        : Color(0xFFDDDDDD),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                side: BorderSide(
                  width: 1.0,
                  color: border_coor,
                )),
            onPressed: () {
              Get.toNamed(page);
            },
            child: Text(
              txt,
              style: textButtonColor145Font(color: txt_color),
            ),
          ),
        );
      }),
    );
    ;
  }
}
