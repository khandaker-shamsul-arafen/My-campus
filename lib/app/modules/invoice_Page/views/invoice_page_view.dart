import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';
import '../../../core/constants/app_constraints.dart';
import '../../../core/constants/app_text_style.dart';
import '../../../core/widget/AppBar.dart';
import '../../../core/widget/customButton.dart';
import '../../../routes/app_pages.dart';
import '../controllers/invoice_page_controller.dart';

class SeventhPageView extends GetView<SeventhPageController> {
  const SeventhPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(false),
        body: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.only(left: leftMainPadding, right: rightMainPadding),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "INVOICE",
                    style: textButtonColor145Font(
                        fontSize: 17, color: AppColor.invoiceColor),
                  ),
                  // SizedBox(
                  //   height : 10.h,
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: topMainPadding - 10.0.h),
                    child: Stack(children: [
                      Container(
                        height: 80.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: AppColor.hintColor.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(2.76),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bill To",
                                style: textButtonColor145Font(
                                    fontSize: 15,
                                    color: AppColor.txtblackColor,
                                    weight: FontWeight.w600),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: topMainPadding.h - 16.h),
                                child: Text(
                                  "ID: 1145908",
                                  style: textButtonColor145Font(
                                      fontSize: 15,
                                      color: AppColor.txtblackColor,
                                      weight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: topMainPadding.h - 17.h),
                                child: Text(
                                  "Institute: BAF Shaheen College Dhaka",
                                  style: textButtonColor145Font(
                                      fontSize: 15,
                                      color: AppColor.txtblackColor),
                                ),
                              )
                            ],
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
                                          left: leftMainPadding.w + 5.w),
                                      child: Text(
                                        "PAID",
                                        style: textButtonColor145Font(
                                            weight: FontWeight.w600,
                                            color: AppColor.txtbuttonColor),
                                      ))),
                            ),
                          ))
                    ]),
                  ),

                  Padding(
                      padding: EdgeInsets.only(top: topMainPadding - 4.h),
                      child: Text(
                        "Detailed Information",
                        style: textButtonColor145Font(
                            fontSize: 17.sp, color: AppColor.invoiceBillColor),
                      )),

                  Padding(
                    padding: EdgeInsets.only(top: topMainPadding - 3.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Fees",
                              style: textColor187Font(
                                  fontSize: 16, color: AppColor.invoiceColor),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Vat",
                                  style: textColor187Font(
                                      fontSize: 16,
                                      color: AppColor.invoiceColor),
                                ),
                                SizedBox(
                                  width: 50.w,
                                ),
                                Text(
                                  "Price",
                                  style: textColor187Font(
                                      fontSize: 16,
                                      color: AppColor.invoiceColor),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  detailsInformation("Monthly Tution Fee", "0%", 4000),
                  detailsInformation("Yearly Tution Fee", "0%", 3000),

                  const Divider(thickness: 1, color: AppColor.dividerColor),
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Subtotal",
                          style: textHintColor124Font(
                              fontSize: 14, color: AppColor.txtblackColor),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: leftMainPadding + 18.w,
                          ),
                          child: Text(
                            "7000",
                            style: textButtonColor145Font(
                                color: AppColor.txtblackColor, fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 44.0.h),
                    child: Center(
                        child: Text("No attached files",
                            style: textHintColor124Font(
                                color:
                                    const Color(0xFF4F4F4F).withOpacity(0.40),
                                fontSize: 14.sp))),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 44.0.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: const CustomButton(
                            txt: "Download Invoice PDF",
                            page: Routes.SEVENTH_PAGE,
                            backgroundColor: Color(0xFFA369BF),
                            txtColor: AppColor.txtbuttonColor,
                            borderColor: Color(0xFFA369BF),
                            isbSelected: true,
                            iseSelected: true)),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 15.0.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: const CustomButton(
                            txt: "Back to Profile",
                            page: Routes.HOME,
                            backgroundColor: AppColor.buttonBackgroundColor,
                            txtColor: AppColor.txtbuttonColor,
                            borderColor: AppColor.borderColor,
                            isbSelected: true,
                            iseSelected: true)),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget detailsInformation(String text, String percent, int number) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
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
}
