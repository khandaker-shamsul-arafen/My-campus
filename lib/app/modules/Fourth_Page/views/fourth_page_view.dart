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
          child:SingleChildScrollView(
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
                    fit: BoxFit.contain,
                  ),
                ),

                const AppSearchBar(),
                // SizedBox(
                //   height: 10.h,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 27.0.w),
                child: CustomTxt(
                    txt: "Payment List", weight: FontWeight.w700, size: 18.sp),
              ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.0.h, left: 27.w),
                child: CustomTxt(
                  txt: "Select to pay",
                  weight: FontWeight.w400,
                  size: 12.sp,
                  color: const Color(0xFF959595),
                ),
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
                  child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomTxt(
                          txt: "Subtotal  ",
                          weight: FontWeight.w400,
                          size: 12.sp),
                      CustomTxt(
                          txt: " 7000 Taka",
                          weight: FontWeight.w500,
                          size: 12.sp),
                    ],
                  ),
                ),
                ),
                Padding(
                  padding:
                    EdgeInsets.only(left: 13.0.w, right: 13.0.w, top: 15.h),
                child: SizedBox(
                    width: double.infinity,
                    height: 62.h,
                    child: AppButton(
                        txt: "Pay All",
                        page: Routes.FIFTH_PAGE,
                        background_color: const Color(0xFFA369BF),
                        txt_color: Colors.white)
                    //
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.0.w,right: 13.0.h),
                  child: SizedBox(
                      width: double.infinity,
                    height: 62.h,
                    child: AppButton(
                      txt: "Pay Selected Ones",
                      page: Routes.FIFTH_PAGE,
                      background_color: Colors.white,
                      txt_color: Color(0xFFA369BF),
                      border_coor: Color(0xFFA369BF),
                    )
                    //
                    ),
                )
              ],
            ),
          )
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
