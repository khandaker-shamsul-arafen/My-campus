import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/AppCheckBox.dart';
import '../../../../constants/app_button.dart';
import '../../../../constants/app_searchbar.dart';
import '../../../../constants/app_textfield.dart';
import '../../../routes/app_pages.dart';
import '../controllers/fourth_page_controller.dart';

class FourthPageView extends GetView<FourthPageController> {
  const FourthPageView({Key? key}) : super(key: key);

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
                      height: 90.h,
                      width: 90.w,
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
                  padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                  child: Image.asset(
                    'assets/baf_shaheen_college.png',
                    height: 150.h,
                    fit: BoxFit.cover,
                  ),
                ),
                const AppSearchBar(),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 13.0.w),
                  child: CustomTxt(
                      txt: "Payment List",
                      weight: FontWeight.w700,
                      size: 18.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.0.h, left: 13.w),
                  child: CustomTxt(
                      txt: "Select to pay",
                      weight: FontWeight.w400,
                      size: 12.sp),
                ),
                const SizedBox(
                  height: 5,
                ),
                AppCheckBox(),
                AppCheckBox(),
                AppCheckBox(),
                AppCheckBox(),
                Padding(
                  padding: EdgeInsets.only(left: 18.0.w, right: 10.0.sp),
                  child: const Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0.r),
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: CustomTxt(
                        txt: "Subtotal:  0,00 Taka",
                        weight: FontWeight.w400,
                        size: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: SizedBox(
                      width: double.infinity,
                      height: 45.h,
                      child: AppButton(
                        txt: "Pay Selected Once",
                        page: Routes.FIFTH_PAGE,
                        background_color: Colors.white,
                        txt_color: Colors.purple,
                        border_coor: Colors.purpleAccent,
                      )
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //       backgroundColor: Colors.white,
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(30.0)),
                      //       side: BorderSide(
                      //         width: 1.0,
                      //         color: Colors.purpleAccent,
                      //       )),
                      //   onPressed: () {
                      //     Get.toNamed(Routes.FIFTH_PAGE);
                      //   },
                      //   child: CustomTxt(
                      //     txt: 'Pay Selected Once',
                      //     weight: FontWeight.w500,
                      //     size: 14.sp,
                      //     color: Colors.purple,
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
