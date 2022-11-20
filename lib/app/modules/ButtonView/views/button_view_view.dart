import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_text_style.dart';
import '../../paymentMethod_page/controllers/paymentMethod_page_controller.dart';
import '../controllers/button_view_controller.dart';

class ButtonViewView extends GetView<ButtonViewController> {
  final String txt;
  final String page;
  final Color backgroundColor;
  final Color borderCoor;
  final Color txtColor;

  const ButtonViewView({
    super.key,
    required this.txt,
    required this.page,
    required this.backgroundColor,
    required this.borderCoor,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    final flag = Get.put(PaymentMethodPageController());
    return Scaffold(
      body: Obx(() {
        return SizedBox(
          height: 60.h,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: (flag.flagbkash.value)
                    ? const Color(0xFFA150DF)
                    : (flag.flagekpay.value)
                        ? const Color(0xFFA150DF)
                        : const Color(0xFFDDDDDD),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                side: BorderSide(
                  width: 1.0,
                  color: borderCoor,
                )),
            onPressed: () {
              Get.toNamed(page);
            },
            child: Text(
              txt,
              style: textButtonColor145Font(color: txtColor),
            ),
          ),
        );
      }),
    );
  }
}
