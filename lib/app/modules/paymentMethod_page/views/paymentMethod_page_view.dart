import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/app/core/constants/app_color.dart';

import '../../../core/constants/app_constraints.dart';
import '../../../core/constants/app_text_style.dart';
import '../../../core/widget/AppBar.dart';
import '../../../core/widget/app_searchbar.dart';
import '../../../core/widget/customButton.dart';
import '../../../routes/app_pages.dart';
import '../controllers/paymentMethod_page_controller.dart';

class PaymentMethodPageView extends GetView<PaymentMethodPageController> {
  const PaymentMethodPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(false),
        body: SafeArea(
          child: Obx(() {
            return Padding(
              padding: EdgeInsets.only(
                  top: topMainPadding - 12.h,
                  left: leftMainPadding,
                  right: rightMainPadding),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppSearchBar(),
                    Padding(
                      padding: EdgeInsets.only(top: topMainPadding - 2.0.h),
                      child: Text(
                        "Select Payment Method",
                        style: textColor187Font(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: topMainPadding - 5.0.h),
                      child: Row(
                        children: [
                          bank("assets/ekpay.png", controller.flagekpay,
                              controller.flagbkash),
                          bank("assets/bkash.png", controller.flagbkash,
                              controller.flagekpay),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: topMainPadding + 4.h),
                      child: SizedBox(
                          width: double.infinity,
                          height: 62.h,
                          child: CustomButton(
                              txt: "Proceed with Payment",
                              page: Routes.SEVENTH_PAGE,
                              backgroundColor: AppColor.buttonBackgroundColor,
                              txtColor: AppColor.txtbuttonColor,
                              borderColor: AppColor.borderColor,
                              isbSelected: controller.flagbkash.value,
                              iseSelected: controller.flagekpay.value)
                          //
                          ),
                    )
                  ],
                ),
              ),
            );
          }),
        ));
  }

  Widget bank(logo, isSelected, isNotSelected) {
    return SizedBox(
        width: 120.w,
        height: 60.h,
        child: Card(
            elevation: 0.5,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                // border color
                color: (isSelected.value)
                    ? const Color(0xFFA150DF)
                    : (isNotSelected.value)
                        ? const Color(0xFFDFDFDF)
                        : const Color(0xFFDFDFDF),
                // border thickness
                width: 1.5.w,
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: IconButton(
                  onPressed: () {
                    debugPrint("$isSelected");
                    isSelected.value = true;
                    isNotSelected.value = false;
                    debugPrint("$isSelected");
                  },
                  icon: Image.asset(
                    logo,
                    height: 50.h,
                    width: 100.w,
                    fit: BoxFit.fill,
                  ),
                ))));
  }
}
