import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/constants/app_button.dart';

import '../../../../constants/app_searchbar.dart';
import '../../../../constants/app_textfield.dart';
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
                Row(
                  children: [
                    Image.asset(
                      "assets/baf_shaheen.png",
                      height: 70.h,
                      width: 70.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTxt(
                            txt: "BAF Shaheen College, Dhaka",
                            weight: FontWeight.w500,
                            size: 18.sp),
                        CustomTxt(
                          txt: "1145908",
                          weight: FontWeight.w400,
                          size: 14.sp,
                          color: Color(0xFF838282),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0.w, right: 18.0.w),
                  child: Image.asset(
                    'assets/baf_shaheen_college.png',
                 //   height: 150.h,
                    fit: BoxFit.contain,
                  ),
                ),
                const AppSearchBar(),

                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 18.0.w),
                  child: CustomTxt(
                      txt: "Select Payment Method",
                      weight: FontWeight.w700,
                      size: 18.sp),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(top:8.0.h,left: 18.0.w),
                  child: Row(
                    children: [
                      SizedBox(
                        width:120,
                        height: 60,
                        child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Image.asset(
                                "assets/ekpay.png",
                                height: 45.h,
                                width: 100.w,
                                fit: BoxFit.fill,
                              ),
                            )),
                      ),
                      SizedBox(
                        width:120,
                        height: 60,
                        child: Card(
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/bkash.png",
                                height: 60.h,
                                width: 100.w,
                                fit: BoxFit.contain,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: SizedBox(
                      width: double.infinity,
                      height: 57.h,
                      child: AppButton(
                        txt: "Proceed with Payment",
                        page: Routes.SIXTH_PAGE,
                        background_color: Colors.white,
                        txt_color: const Color(0xFFA1A1A1),
                        border_coor: const Color(0xFFA1A1A1),
                      )
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //       backgroundColor: Colors.white,
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(30.0)),
                      //       side: const BorderSide(
                      //         width: 1.0,
                      //         color: Color(0xFFA1A1A1),
                      //       )),
                      //   onPressed: () {
                      //     Get.toNamed(Routes.SIXTH_PAGE);
                      //   },
                      //   child: CustomTxt(
                      //     txt: 'Proceed With Payment',
                      //     weight: FontWeight.w500,
                      //     size: 14.sp,
                      //     color: Color(0xFFA1A1A1),
                      //   ),
                      // ),
                      ),
                )
              ],
            ),
          ),
        ));
  }

  AppBar appbarDesign() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/appbar-logo.png",
            height: AppBar().preferredSize.height - 16.h,
          ),
          SizedBox(
            width: 5.h,
          ),
          CustomTxt(
            txt: "My Campus",
            weight: FontWeight.w700,
            size: 16.sp,
            //dsf: GoogleFonts.getFont('Gorditas'),
            color: Colors.purple,
          ),
          SizedBox(
            width: 3.w,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xFF4F4F4F)),
    );
  }
}
