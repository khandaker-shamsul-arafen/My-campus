import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/app/modules/app_bar/views/app_bar_view.dart';

import '../../../../AppBar.dart';
import '../../../../constants/app_constraints.dart';
import '../../../../constants/app_searchbar.dart';
import '../../../../constants/app_text_style.dart';
import '../../../routes/app_pages.dart';
import '../controllers/invoice_page_controller.dart';

class SixthPageView extends GetView<SixthPageController> {
  const SixthPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarDesign(false),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppSearchBar(),
                Padding(
                    padding: EdgeInsets.only(
                        top: topMainPadding, left: leftMainPadding.w + 8.w),
                    child: Text(
                      "Select Payment Method",
                      style: textColor187Font(),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: leftMainPadding.w),
                  child: Row(
                    children: [
                      bank("assets/ekpay.png"),
                      bank("assets/bkash.png"),
                    ],
                  ),
                ),

                // Padding(
                //   padding: EdgeInsets.only(top: 8.0.h, left: 18.0.w),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         width: 120.w,
                //         height: 60.h,
                //         child: Card(
                //             elevation: 0.5,
                //             shape: const RoundedRectangleBorder(
                //               side: BorderSide(
                //                 // border color
                //                 color: Color(0xFFDFDFDF),
                //                 // border thickness
                //                 width: 1,
                //               ),
                //             ),
                //             child: Padding(
                //               padding: EdgeInsets.all(13.0.r),
                //               child: Image.asset(
                //                 "assets/ekpay.png",
                //                 height: 45.h,
                //                 width: 100.w,
                //                 fit: BoxFit.fill,
                //               ),
                //             )),
                //       ),
                //       SizedBox(
                //         width: 120.w,
                //         height: 60.h,
                //         child: Card(
                //             shape: RoundedRectangleBorder(
                //                 side: BorderSide(
                //                     color: Color(0xFFA150DF), width: 2.w),
                //                 borderRadius: BorderRadius.circular(8.0.r)),
                //             elevation: 0.5,
                //             child: Padding(
                //               padding: EdgeInsets.all(8.0.r),
                //               child: Image.asset(
                //                 "assets/bkash.png",
                //                 height: 60.h,
                //                 width: 100.w,
                //                 fit: BoxFit.contain,
                //               ),
                //             )),
                //       ),
                //     ],
                //   ),
                // ),

                Padding(
                  padding: EdgeInsets.only(
                      left: 8.0.w, top: 13.h, right: 8.w, bottom: 8.h),
                  child: SizedBox(
                      width: double.infinity,
                      height: 62.h,
                      child: AppBarView(
                        txt: "Proceed with Payment",
                        page: Routes.SEVENTH_PAGE,
                        background_color: Color(0xFFA150DF),
                        txt_color: const Color(0xFFFFFFFF),
                        border_coor: const Color(0xFFA1A1A1),
                      )
                      //
                      ),
                )
              ],
            ),
          ),
        ));
  }
}

Widget bank(
  String logo,
) {
  return SizedBox(
    width: 120.w,
    height: 60.h,
    child: Card(
        elevation: 0.5,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            // border color
            color: Color(0xFFDFDFDF),
            // border thickness
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              logo,
              height: 50.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
          ),
        )),
  );
}
