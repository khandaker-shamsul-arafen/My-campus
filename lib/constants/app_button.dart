import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'app_textfield.dart';

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
    this.border_coor = Colors.purple,
    required this.txt_color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: background_color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          side: BorderSide(
            width: 1.0,
            color: border_coor,
          )),
      onPressed: () {
        Get.toNamed(page);
      },
      child: CustomTxt(
        txt: txt,
        weight: FontWeight.w500,
        size: 14.sp,
        color: txt_color,
      ),
    );
  }
}
