import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';
import '../../../core/constants/app_constraints.dart';
import '../../../core/constants/app_text_style.dart';
import '../../../core/widget/AppBar.dart';
import '../../../core/widget/AppCheckBox.dart';
import '../../../core/widget/app_searchbar.dart';
import '../../../core/widget/customButton.dart';
import '../../../routes/app_pages.dart';
import '../controllers/fourth_page_controller.dart';

class FourthPageView extends GetView<FourthPageController> {
  const FourthPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(false),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 8.0.h, left: leftMainPadding, right: rightMainPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppSearchBar(),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0.h),
                    child: Text(
                      "Payment List",
                      style: textColor187Font(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      "Select to pay",
                      style: textButtonColor145Font(
                        color: const Color(0xFF959595),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  Column(
                    children: [
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
                        txt: 'Monthly Tution Fee',
                        number: 4000,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: rightMainPadding - 8.w,
                        top: topMainPadding.h - 10.h),
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
                                  color: AppColor.txtblackColor,
                                  fontSize: 12.sp),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: const CustomButton(
                            txt: "Pay All",
                            page: Routes.FIFTH_PAGE,
                            backgroundColor: Color(0xFFA369BF),
                            txtColor: Colors.white,
                            borderColor: Color(0xFFA369BF),
                            isbSelected: true,
                            iseSelected: true)
                        //
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: const CustomButton(
                            txt: "Pay Selected Ones",
                            page: Routes.FIFTH_PAGE,
                            backgroundColor: Colors.white,
                            borderColor: Color(0xFFA369BF),
                            txtColor: Color(0xFFA369BF),
                            isbSelected: true,
                            iseSelected: true)
                        //
                        ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
