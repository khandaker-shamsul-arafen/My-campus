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
    return Padding(
      padding:  EdgeInsets.only(left: 15.0.w),
      child: Container(
        //color: Colors.red,
        height: 120.h,
        child: Column(
          children: [
            Card(
              shadowColor: Colors.white.withOpacity(0.3),
              elevation: 10,
              child: Image.asset(
                img1,
                height: 70.h,
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
      ),
    );
  }
}
