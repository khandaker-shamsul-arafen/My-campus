import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_button.dart';
import '../../../../constants/app_textfield.dart';
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
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: CustomTxt(
                      txt: "INVOICE",
                      weight: FontWeight.w500,
                      size: 17.sp,
                      color: Color(0xFFA369BF),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Stack(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.w, right: 1.0.w),
                      child: Container(
                        height: 80.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Color(0xFFDDDDDD)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTxt(
                                  txt: "Bill To",
                                  weight: FontWeight.w600,
                                  size: 15.sp),
                              SizedBox(
                                height: 4.h,
                              ),
                              CustomTxt(
                                  txt: "ID: 1145908 ",
                                  weight: FontWeight.w400,
                                  size: 15.sp),
                              SizedBox(
                                height: 4.h,
                              ),
                              CustomTxt(
                                  txt: "Institute: BAF Shaheen College Dhaka",
                                  weight: FontWeight.w500,
                                  size: 15.sp),
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
                                  padding: EdgeInsets.only(left: 15.0.h),
                                  child: CustomTxt(
                                    txt: "PAID",
                                    weight: FontWeight.w600,
                                    size: 14.sp,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ))
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: CustomTxt(
                      txt: "Detailed Information",
                      weight: FontWeight.w500,
                      size: 17.sp,
                      color: const Color(0xFF9D9D9D),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.w, right: 10.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTxt(
                              txt: "Fees",
                              weight: FontWeight.w700,
                              size: 16.sp,
                              color: Color(0xFFA369Bf),
                            ),
                            Row(
                              children: [
                                CustomTxt(
                                  txt: "Vat",
                                  weight: FontWeight.w700,
                                  size: 16.sp,
                                  color: const Color(0xFFA369Bf),
                                ),
                                SizedBox(
                                  width: 55.w,
                                ),
                                CustomTxt(
                                  txt: "Price",
                                  weight: FontWeight.w700,
                                  size: 16.sp,
                                  color: const Color(0xFFA369Bf),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTxt(
                          txt: "Monthly Tution Fee",
                          weight: FontWeight.w500,
                          size: 14.sp,
                          color: const Color(0xFF656565),
                        ),
                        Row(
                          children: [
                            CustomTxt(
                              txt: "0%",
                              weight: FontWeight.w700,
                              size: 16.sp,
                              color: Color(0xFF919191),
                            ),
                            SizedBox(
                              width: 60.w,
                            ),
                            CustomTxt(
                              txt: "4000",
                              weight: FontWeight.w700,
                              size: 16.sp,
                              color: const Color(0xFF656565),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTxt(
                          txt: "Yearly Tution Fee",
                          weight: FontWeight.w500,
                          size: 14.sp,
                          color: Color(0xFF656565),
                        ),
                        Row(
                          children: [
                            CustomTxt(
                              txt: "0%",
                              weight: FontWeight.w700,
                              size: 16.sp,
                              color: const Color(0xFF919191),
                            ),
                            SizedBox(
                              width: 60.w,
                            ),
                            CustomTxt(
                              txt: "3000",
                              weight: FontWeight.w700,
                              size: 16.sp,
                              color: const Color(0xFF656565),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xFFA1A1A1),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: CustomTxt(
                        txt: "Subtotal:  7,00 Taka",
                        weight: FontWeight.w400,
                        size: 12.sp),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Center(
                      child: CustomTxt(
                    txt: "No attached files",
                    weight: FontWeight.w400,
                    size: 13.sp,
                    color: const Color(0xFFB8B8B8),
                  )),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 62.h,
                      child: AppButton(
                          txt: "Download Invoice PDF",
                          page: Routes.SEVENTH_PAGE,
                          background_color: const Color(0xFFA369BF),
                          txt_color: Colors.white)
                      // ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //     backgroundColor: const Color(0xFFA369BF),
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(30.0)),
                      //   ),
                      //   onPressed: () {
                      //     Get.toNamed(Routes.SEVENTH_PAGE);
                      //   },
                      //   child: CustomTxt(
                      //     txt: 'Pay All',
                      //     weight: FontWeight.w500,
                      //     size: 14.sp,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      ),
                  SizedBox(
                    height: 3.h,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 62.h,
                      child: AppButton(
                          txt: "Back to Profile",
                          page: Routes.SEVENTH_PAGE,
                          background_color: Colors.white,
                          txt_color: Color(0xFFA369BF))),
                ],
              ),
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
