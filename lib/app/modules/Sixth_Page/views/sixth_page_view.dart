import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_textfield.dart';
import '../../../routes/app_pages.dart';
import '../controllers/sixth_page_controller.dart';

class SixthPageView extends GetView<SixthPageController> {
  const SixthPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTxt(
                  txt: "INVOICE",
                  weight: FontWeight.w500,
                  size: 17.sp,
                  color: Color(0xFFA369BF),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(children: [
                  Container(
                    height: 70.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xFFDDDDDD)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomTxt(
                              txt: "Bill To",
                              weight: FontWeight.w600,
                              size: 15),
                          SizedBox(
                            height: 4.h,
                          ),
                          const CustomTxt(
                              txt: "ID: 1145908 ",
                              weight: FontWeight.w400,
                              size: 15),
                          SizedBox(
                            height: 4.h,
                          ),
                          const CustomTxt(
                              txt: "Institute: BAF Shaheen College Dhaka",
                              weight: FontWeight.w400,
                              size: 15),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 2.h,
                      right: -24.w,
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(40 / 360),
                        child: Container(
                            alignment: Alignment.center,
                            height: 20.h,
                            width: 100.w,
                            decoration: const BoxDecoration(
                              color: Colors.purple,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.0.h),
                              child: const CustomTxt(
                                txt: "Paid",
                                weight: FontWeight.w600,
                                size: 14,
                                color: Colors.white,
                              ),
                            )),
                      ))
                ]),
                SizedBox(
                  height: 10.h,
                ),
                const CustomTxt(
                    txt: "Detailed Information",
                    weight: FontWeight.w500,
                    size: 17),
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
                          const CustomTxt(
                            txt: "Fees",
                            weight: FontWeight.w700,
                            size: 16,
                            color: Colors.purple,
                          ),
                          Row(
                            children: [
                              const CustomTxt(
                                txt: "Vat",
                                weight: FontWeight.w700,
                                size: 16,
                                color: Colors.purple,
                              ),
                              SizedBox(
                                width: 55.w,
                              ),
                              const CustomTxt(
                                txt: "Price",
                                weight: FontWeight.w700,
                                size: 16,
                                color: Colors.purple,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTxt(
                        txt: "Monthly Tution Fee",
                        weight: FontWeight.w500,
                        size: 14,
                        color: Color(0xFFA1A1A1),
                      ),
                      Row(
                        children: [
                          const CustomTxt(
                            txt: "0%",
                            weight: FontWeight.w700,
                            size: 16,
                            color: Color(0xFFA1A1A1),
                          ),
                          SizedBox(
                            width: 60.w,
                          ),
                          const CustomTxt(
                            txt: "4000",
                            weight: FontWeight.w700,
                            size: 16,
                            color: Color(0xFFA1A1A1),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomTxt(
                        txt: "Yearly Tution Fee",
                        weight: FontWeight.w500,
                        size: 14,
                        color: Color(0xFFA1A1A1),
                      ),
                      Row(
                        children: [
                          const CustomTxt(
                            txt: "0%",
                            weight: FontWeight.w700,
                            size: 16,
                            color: Color(0xFFA1A1A1),
                          ),
                          SizedBox(
                            width: 60.w,
                          ),
                          const CustomTxt(
                            txt: "3000",
                            weight: FontWeight.w700,
                            size: 16,
                            color: Color(0xFFA1A1A1),
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
                const Align(
                  alignment: Alignment.topRight,
                  child: CustomTxt(
                      txt: "Subtotal:  7,00 Taka",
                      weight: FontWeight.w400,
                      size: 12),
                ),
                SizedBox(
                  height: 100.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA369BF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.SEVENTH_PAGE);
                    },
                    child: CustomTxt(
                      txt: 'Pay All',
                      weight: FontWeight.w500,
                      size: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        side: const BorderSide(
                          width: 1.0,
                          color: Colors.purpleAccent,
                        )),
                    onPressed: () {
                      Get.toNamed(Routes.FOURTH_PAGE);
                    },
                    child: CustomTxt(
                      txt: 'Pay All',
                      weight: FontWeight.w500,
                      size: 14.sp,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
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
