import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_textfield.dart';

class GetImageContainer extends StatelessWidget {
  final String img1;
  final String txt;
  final FontWeight weight;
  final double size;

  const GetImageContainer(
      {super.key,
      required this.txt,
      required this.img1,
      this.weight = FontWeight.w400,
      this.size = 12});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
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
          CustomTxt(
            txt: txt,
            weight: weight,
            size: size,
          ),
        ],
      ),
    );
  }
}
