import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/constants/app_button.dart';
import 'package:my_campus/constants/app_constraints.dart';
import 'package:my_campus/constants/app_text_style.dart';

import '../../../../constants/app_searchbar.dart';
import '../../../routes/app_pages.dart';
import '../controllers/fifth_page_controller.dart';

class FifthPageView extends GetView<FifthPageController> {
  const FifthPageView({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.only(
                      top: 13.0.h, left: lftmainPadding.w + 2.w),
                  child: Row(
                    children: [
                      bank("assets/ekpay.png"),
                      bank("assets/bkash.png"),

                      // SizedBox(
                      //   width: 120.w,
                      //   height: 60.h,
                      //   child: Card(
                      //       elevation: 0.5,
                      //       shape: const RoundedRectangleBorder(
                      //         side: BorderSide(
                      //           // border color
                      //           color: Color(0xFFDFDFDF),
                      //           // border thickness
                      //           width: 1,
                      //         ),
                      //       ),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Image.asset(
                      //           "assets/bkash.png",
                      //           height: 60.h,
                      //           width: 100.w,
                      //           fit: BoxFit.contain,
                      //         ),
                      //       )),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 5.0.w, right: 8.w, bottom: 8.h, top: 13.h),
                  child: SizedBox(
                      width: double.infinity,
                      height: 62.h,
                      child: AppButton(
                        txt: "Proceed with Payment",
                        page: Routes.SIXTH_PAGE,
                        background_color: Colors.white,
                        txt_color: const Color(0xFFA1A1A1),
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

  Widget bank(String logo) {
    return SizedBox(
      width: 120.w,
      height: 60.h,
      child: Card(
          elevation: 0.5,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              // border color
              color: Color(0xFFDFDFDF),
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
}
