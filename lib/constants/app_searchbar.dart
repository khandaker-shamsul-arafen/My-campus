import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app/routes/app_pages.dart';
import 'app_textfield.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      // child: Card(
      //   shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.r)),
      //   elevation: 2,
      //   child: Padding(
      //     padding:  EdgeInsets.all(8.0.r),
      //     child: Container(
      //       height: 50.h,
      //       width: MediaQuery.of(context).size.width,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(15.r),
      //       ),
      //       child: ListTile(
      //         leading: Icon(Icons.search),
      //         trailing:  SizedBox(
      //           height: 50.h,
      //
      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: const Color(0xFFA369BF),
      //               shape: const RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
      //               ),
      //             ), onPressed: () {
      //             Get.toNamed(Routes.THIRD_PAGE);
      //           }, child: CustomTxt(txt: 'Search', weight: FontWeight.w500, size: 14.sp,color: Colors.white,),
      //           ),
      //         ),
      //
      //       ),
      //     ),
      //   ),
      // ),
      child: Padding(
        padding: EdgeInsets.only(left: 4.0.w,right: 4.0.h),
        child: Card(
          shadowColor: Color(0xFFDDDDDD),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFFDDDDDD),
            ),
            borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
          ),
          child: SizedBox(
            height: 38.h,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(15.r),
                //       bottomLeft: Radius.circular(15.r),
                //       bottomRight: Radius.circular(30.r),
                //       topRight: Radius.circular(30.r)),
                //   borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
                // ),
                enabledBorder: OutlineInputBorder(
                  // borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(15.r),
                  //     bottomLeft: Radius.circular(15.r),
                  //     bottomRight: Radius.circular(30.r),
                  //     topRight: Radius.circular(30.r)),
                  borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
                ),
                suffixIcon: SizedBox(
                 // height: 100.h,
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
    );
  }
}
