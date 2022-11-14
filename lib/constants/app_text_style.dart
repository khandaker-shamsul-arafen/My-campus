import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_campus/constants/app_color.dart';

textHintColor124Font({
  weight = FontWeight.w400,
  double fontSize = 12,
  Color color = AppColor.hintColor,
}) {
  return TextStyle(fontWeight: weight, fontSize: fontSize.sp, color: color);
}

textColor187Font({weight = FontWeight.w700, double fontSize = 18}) {
  return TextStyle(
    fontWeight: weight,
    fontSize: fontSize.sp,
    color: AppColor.txtblackColor,
  );
}

textButtonColor145Font(
    {weight = FontWeight.w500,
    double fontSize = 14,
    Color color = AppColor.txtbuttonColor}) {
  return TextStyle(
    fontWeight: weight,
    fontSize: fontSize.sp,
    color: color,
  );
}
