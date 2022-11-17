import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/constants/app_constraints.dart';
import 'package:my_campus/constants/app_text_style.dart';

import '../../../../AppBar.dart';
import '../../../../constants/app_searchbar.dart';
import '../../../routes/app_pages.dart';
import '../../ButtonView/views/button_view_view.dart';
import '../controllers/fifth_page_controller.dart';

class FifthPageView extends GetView<FifthPageController> {
  const FifthPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(false),
        body: SafeArea(
          child: Obx(() {
            return Padding(
              padding: EdgeInsets.only(
                  top: 8.0.h, left: leftMainPadding, right: rightMainPadding),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppSearchBar(),
                    Padding(
                      padding: EdgeInsets.only(top: 18.0.h),
                      child: Text(
                        "Select Payment Method",
                        style: textColor187Font(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0.h),
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
                      padding: EdgeInsets.only(top: 24.h),
                      child: SizedBox(
                          width: double.infinity,
                          height: 62.h,
                          child: ButtonViewView(
                            txt: "Proceed with Payment",
                            page: Routes.SEVENTH_PAGE,
                            background_color: Colors.white,
                            txt_color: const Color(0xFFFFFFFF),
                            border_coor: const Color(0xFFA1A1A1),
                          )
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
