import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/constants/app_text_style.dart';

import '../../../../constants/app_button.dart';
import '../../../../constants/app_color.dart';
import '../../../../constants/app_constraints.dart';
import '../../../routes/app_pages.dart';
import '../controllers/seventh_page_controller.dart';

class SeventhPageView extends GetView<SeventhPageController> {
  const SeventhPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: lftmainPadding.w, right: rgtmainPadding.w - 10.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: lftmainPadding.w - 1.0.w),
                      child: Text(
                        "INVOICE",
                        style: textButtonColor145Font(
                            fontSize: 17.sp, color: const Color(0xFFA369BF)),
                      )),
                  // SizedBox(
                  //   height: 10.h,
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: topmainPadding.h - 9.0.h),
                    child: Stack(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: lftmainPadding.w - 2.w, right: 1.0.w),
                        child: Container(
                          height: 80.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Color(0xFFDDDDDD)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bill To",
                                  style: textButtonColor145Font(
                                      fontSize: 15.sp,
                                      color: AppColor.txtblackColor,
                                      weight: FontWeight.w600),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: topmainPadding.h - 18.h),
                                  child: Text(
                                    "ID: 1145908",
                                    style: textButtonColor145Font(
                                        fontSize: 15.sp,
                                        color: AppColor.txtblackColor,
                                        weight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: topmainPadding.h - 17.h),
                                  child: Text(
                                    "Institute: BAF Shaheen College Dhaka",
                                    style: textButtonColor145Font(
                                        fontSize: 15.sp,
                                        color: AppColor.txtblackColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 10.h,
                          right: -24.w,
                          child: RotationTransition(
                            turns: const AlwaysStoppedAnimation(40 / 360),
                            child: Padding(
                              padding: EdgeInsets.only(right: 5.0.w),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 25.h,
                                  width: 100.w,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFA369BF),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: lftmainPadding.w + 5.w),
                                      child: Text(
                                        "PAID",
                                        style: textButtonColor145Font(
                                            weight: FontWeight.w600,
                                            color: Colors.white),
                                      ))),
                            ),
                          ))
                    ]),
                  ),

                  Padding(
                      padding: EdgeInsets.only(
                          left: lftmainPadding.w - 2.w,
                          top: topmainPadding.h - 10.h),
                      child: Text(
                        "Detailed Information",
                        style: textButtonColor145Font(
                            fontSize: 17.sp, color: const Color(0xFF9D9D9D)),
                      )),

                  Padding(
                    padding: EdgeInsets.only(
                        left: lftmainPadding.w - 1.w,
                        right: rgtmainPadding.w - 14.w,
                        top: topmainPadding.h - 10.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fees",
                              style: textColor187Font(
                                  fontSize: 16.sp,
                                  color: const Color(0xFFA369Bf)),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Vat",
                                  style: textColor187Font(
                                      fontSize: 16.sp,
                                      color: const Color(0xFFA369Bf)),
                                ),
                                SizedBox(
                                  width: 50.w,
                                ),
                                Text(
                                  "Price",
                                  style: textColor187Font(
                                      fontSize: 16.sp,
                                      color: const Color(0xFFA369Bf)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  details_information("Monthly Tution Fee", "0%", 4000),
                  details_information("Yearly Tution Fee", "0%", 3000),

                  Padding(
                    padding: EdgeInsets.only(
                        left: lftmainPadding.w, right: rgtmainPadding.w - 15.h),
                    child: const Divider(
                      thickness: 2,
                      color: Color(0xFFA1A1A1),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: rgtmainPadding.w - 8.w),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Subtotal",
                              style: textHintColor124Font(fontSize: 14.sp),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: lftmainPadding.w,
                              ),
                              child: Text(
                                "7000",
                                style: textButtonColor145Font(
                                    color: AppColor.txtblackColor,
                                    fontSize: 14.sp),
                              ),
                            )
                          ],
                        ),
                      )),

                  Padding(
                    padding: EdgeInsets.only(top: 44.0.h),
                    child: Center(
                        child: Text("No attached files",
                            style: textHintColor124Font(
                                color: const Color(0xFFB8B8B8)))),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 44.0.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: AppButton(
                            txt: "Download Invoice PDF",
                            page: Routes.SEVENTH_PAGE,
                            background_color: const Color(0xFFA369BF),
                            txt_color: Colors.white)),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 3.0.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: AppButton(
                            txt: "Back to Profile",
                            page: Routes.SEVENTH_PAGE,
                            background_color: Colors.white,
                            txt_color: Color(0xFFA369BF))),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget details_information(String text, String percent, int number) {
    return Padding(
      padding: EdgeInsets.only(
          left: lftmainPadding.w - 1.w,
          right: rgtmainPadding.w - 14.w,
          top: topmainPadding.h - 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: textButtonColor145Font(color: const Color(0xFF656565)),
          ),
          Row(
            children: [
              Text(
                percent,
                style: textColor187Font(
                    fontSize: 16.sp, color: const Color(0xFF919191)),
              ),
              SizedBox(
                width: 50.w,
              ),
              Text(
                number.toString(),
                style: textColor187Font(
                    fontSize: 16.sp, color: const Color(0xFF656565)),
              )
            ],
          )
        ],
      ),
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
