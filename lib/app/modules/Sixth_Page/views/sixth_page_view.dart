import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_button.dart';
import '../../../../constants/app_constraints.dart';
import '../../../../constants/app_searchbar.dart';
import '../../../../constants/app_text_style.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sixth_page_controller.dart';

class SixthPageView extends GetView<SixthPageController> {
  const SixthPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppSearchBar(),
                Padding(
                    padding: EdgeInsets.only(
                        top: topmainPadding, left: lftmainPadding.w + 8.w),
                    child: Text(
                      "Select Payment Method",
                      style: textColor187Font(),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: lftmainPadding.w),
                  child: Row(
                    children: [
                      bank("assets/ekpay.png", false),
                      bank("assets/bkash.png", true),
                    ],
                  ),
                ),

                // Padding(
                //   padding: EdgeInsets.only(top: 8.0.h, left: 18.0.w),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         width: 120.w,
                //         height: 60.h,
                //         child: Card(
                //             elevation: 0.5,
                //             shape: const RoundedRectangleBorder(
                //               side: BorderSide(
                //                 // border color
                //                 color: Color(0xFFDFDFDF),
                //                 // border thickness
                //                 width: 1,
                //               ),
                //             ),
                //             child: Padding(
                //               padding: EdgeInsets.all(13.0.r),
                //               child: Image.asset(
                //                 "assets/ekpay.png",
                //                 height: 45.h,
                //                 width: 100.w,
                //                 fit: BoxFit.fill,
                //               ),
                //             )),
                //       ),
                //       SizedBox(
                //         width: 120.w,
                //         height: 60.h,
                //         child: Card(
                //             shape: RoundedRectangleBorder(
                //                 side: BorderSide(
                //                     color: Color(0xFFA150DF), width: 2.w),
                //                 borderRadius: BorderRadius.circular(8.0.r)),
                //             elevation: 0.5,
                //             child: Padding(
                //               padding: EdgeInsets.all(8.0.r),
                //               child: Image.asset(
                //                 "assets/bkash.png",
                //                 height: 60.h,
                //                 width: 100.w,
                //                 fit: BoxFit.contain,
                //               ),
                //             )),
                //       ),
                //     ],
                //   ),
                // ),

                Padding(
                  padding: EdgeInsets.only(
                      left: 8.0.w, top: 13.h, right: 8.w, bottom: 8.h),
                  child: SizedBox(
                      width: double.infinity,
                      height: 62.h,
                      child: AppButton(
                        txt: "Proceed with Payment",
                        page: Routes.SEVENTH_PAGE,
                        background_color: Color(0xFFA150DF),
                        txt_color: const Color(0xFFFFFFFF),
                        border_coor: const Color(0xFFA1A1A1),
                      )
                      //
                      ),
                )
              ],
            ),
          ),
        ));
  }
}

Widget bank(String logo, bool borderColor) {
  return SizedBox(
    width: 120.w,
    height: 60.h,
    child: Card(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            // border color
            color: (borderColor) ? Color(0xFFA150DF) : Color(0xFFDFDFDF),
            // border thickness
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(
            logo,
            height: 50.h,
            width: 100.w,
            fit: BoxFit.fill,
          ),
        )),
  );
}

AppBar appbarDesign() {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Image.asset(
      "assets/img_1.png",
      height: 23.h,
      width: 128.w,
    ),
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Color(0xFF4F4F4F)),
  );
}
