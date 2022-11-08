import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_textfield.dart';

class Get_Image_Container extends StatelessWidget {
  final String img1;
  final String txt;
  FontWeight fontweight;
  double fontsize;

  Get_Image_Container(
      {super.key,
      required this.txt,
      required this.img1,
      this.fontweight = FontWeight.w400,
      this.fontsize = 12});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      child: Column(
        children: [
          Card(
            elevation: 2,
            child: Image.asset(
              img1,
              height: 100.h,
              width: 100.w,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          customtxt(
            txt: txt,
            fontweight: fontweight,
            fontsize: fontsize,
          ),
        ],
      ),
    );
  }
}
