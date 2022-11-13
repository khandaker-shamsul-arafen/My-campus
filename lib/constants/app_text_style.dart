import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_campus/constants/app_color.dart';

textHintColor12Font({weight = FontWeight.w400, double fontSize = 12}) {
  return TextStyle(
    fontWeight: weight,
    fontSize: fontSize.sp,
    color: AppColor.hintColor,
  );
}
