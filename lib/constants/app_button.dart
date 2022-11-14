import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_campus/constants/app_constraints.dart';
import 'package:my_campus/constants/app_text_style.dart';

class AppButton extends StatelessWidget {
  final String txt;
  final String page;
  final Color background_color;
  final Color border_coor;
  final Color txt_color;

  AppButton({
    super.key,
    required this.txt,
    required this.page,
    required this.background_color,
    this.border_coor = const Color(0xFFA369BF),
    this.txt_color = const Color(0xFFA369BF),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 8.0.h, left: lftmainPadding.w, right: rgtmainPadding.w),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: background_color,
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
  }
}
