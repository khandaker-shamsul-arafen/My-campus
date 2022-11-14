import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/AppCheckBox.dart';
import '../../../../constants/app_button.dart';
import '../../../../constants/app_color.dart';
import '../../../../constants/app_constraints.dart';
import '../../../../constants/app_searchbar.dart';
import '../../../../constants/app_text_style.dart';
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

              AppCheckBox(
                txt: 'Monthly Tution Fee',
                number: 5000,
              ),
              AppCheckBox(
                txt: 'Yearly Admission Fee',
                number: 4000,
              ),
              AppCheckBox(
                txt: 'First Term Exam Fee',
                number: 3000,
              ),
              AppCheckBox(
                txt: 'First Term Exam Fee',
                number: 4000,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: lftmainPadding.w + 10.w,
                    right: rgtmainPadding,
                    top: topmainPadding.h - 4.h),
                child: const Divider(
                  thickness: 1,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 8.0.w),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Subtotal",
                        style: textHintColor124Font(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0.w, right: 8.0.w),
                        child: Text(
                          "7000",
                          style: textButtonColor145Font(
                              color: AppColor.txtblackColor, fontSize: 12.sp),
                        ),
                      )
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
