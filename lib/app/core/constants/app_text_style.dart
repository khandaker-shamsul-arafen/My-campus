import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

textHintColor124Font({
  weight = FontWeight.w400,
  double fontSize = 12,
  Color color = AppColor.hintColor,
}) {
  return TextStyle(fontWeight: weight, fontSize: fontSize.sp, color: color);
}

textColor187Font(
    {weight = FontWeight.w700,
    double fontSize = 18,
    Color color = AppColor.txtblackColor}) {
  return TextStyle(
    fontWeight: weight,
    fontSize: fontSize.sp,
    color: color,
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
