import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/app/modules/app_bar/views/app_bar_view.dart';

import '../../../../AppBar.dart';
import '../../../../constants/AppCheckBox.dart';
import '../../../../constants/app_color.dart';
import '../../../../constants/app_constraints.dart';
import '../../../../constants/app_searchbar.dart';
import '../../../../constants/app_text_style.dart';
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
                        child: AppBarView(
                          txt: "Pay All",
                          page: Routes.FIFTH_PAGE,
                          background_color: const Color(0xFFA369BF),
                          txt_color: Colors.white,
                          border_coor: const Color(0xFFA369BF),
                        )
                        //
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: AppBarView(
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
            ),
          ),
        ));
  }
}
