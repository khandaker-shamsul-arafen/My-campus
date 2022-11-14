import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_campus/constants/app_constraints.dart';

import '../app/routes/app_pages.dart';
import 'app_text_style.dart';
import 'app_textfield.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Row(
            children: [
              Image.asset(
                "assets/baf_shaheen.png",
                height: 60.h,
                width: 60.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BAF Shaheen College, Dhaka",
                    style: textButtonColor145Font(
                        fontSize: 18, color: const Color(0xFF403F3F)),
                  ),
                  Text(
                    "1145908",
                    style: textHintColor124Font(
                        fontSize: 14.sp, color: const Color(0xFF838282)),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.0.w, right: 18.0.w),
          child: Image.asset(
            'assets/baf_shaheen_college.png',
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: lftmainPadding.w + 7.w,
              right: rgtmainPadding.w - 4.w,
              top: 8.h),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ]),
            child: SizedBox(
              height: 38.h,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 12.r,
                    color: Color(0xFFBABABA),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(15.r),
                  //       bottomLeft: Radius.circular(15.r),
                  //       bottomRight: Radius.circular(30.r),
                  //       topRight: Radius.circular(30.r)),
                  //   borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        bottomLeft: Radius.circular(25.r),
                        bottomRight: Radius.circular(30.r),
                        topRight: Radius.circular(30.r)),
                    borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
                  ),
                  suffixIcon: SizedBox(
                    height: 58.h,
                    width: 97.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFA369BF),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.THIRD_PAGE);
                      },
                      child: CustomTxt(
                        txt: 'Search',
                        weight: FontWeight.w500,
                        size: 14.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
