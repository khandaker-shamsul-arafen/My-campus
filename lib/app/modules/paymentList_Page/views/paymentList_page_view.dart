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
import '../controllers/paymentList_page_controller.dart';

class PaymentListPageView extends GetView<PaymentListPageController> {
  const PaymentListPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final flag = Get.put(PaymentListPageController());
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
                    padding: EdgeInsets.only(top: topMainPadding - 5.0.h),
                    child: Text(
                      "Payment List",
                      style: textColor187Font(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: topMainPadding - 14.h),
                    child: Text(
                      "Select to pay",
                      style: textButtonColor145Font(
                        color: AppColor.hintColor,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Obx(() {
                    return SizedBox(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return AppCheckBox(
                            txt: flag.fees[index].fee,
                            number: flag.fees[index].amount,
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: padding12.w,
                          );
                        },
                        itemCount: controller.fees.length,
                      ),
                    );
                  }),
                  Padding(
                    padding: EdgeInsets.only(
                        right: rightMainPadding - 8.w,
                        top: topMainPadding.h - 14.h),
                    child: const Divider(
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: rightMainPadding - 12.0.w),
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
                            padding: EdgeInsets.only(
                                left: leftMainPadding - 12.w,
                                right: rightMainPadding - 12.w),
                            child: Text(
                              "7000",
                              style: textButtonColor145Font(
                                  color: AppColor.txtblackColor, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: topMainPadding),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: const CustomButton(
                            txt: "Pay All",
                            page: Routes.FIFTH_PAGE,
                            backgroundColor: AppColor.buttonBackgroundColor,
                            txtColor: Colors.white,
                            borderColor: AppColor.borderColor,
                            isbSelected: true,
                            iseSelected: true)
                        //
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: topMainPadding - 8.h),
                    child: SizedBox(
                        width: double.infinity,
                        height: 62.h,
                        child: const CustomButton(
                            txt: "Pay Selected Ones",
                            page: Routes.FOURTH_PAGE,
                            backgroundColor: AppColor.buttonBackgroundColor,
                            txtColor: AppColor.txtbuttonColor,
                            borderColor: AppColor.borderColor,
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
