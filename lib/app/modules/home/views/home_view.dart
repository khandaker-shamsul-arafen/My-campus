import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_constraints.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../constants/app_textfield.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: lftmainPadding.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: lftmainPadding.w,
                      right: rgtmainPadding.w,
                      top: topmainPadding.h),
                  child: Container(
                    height: 167.h,
                    width: 339.w,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xFFA150Df).withOpacity(0.12),
                            Color(0xFFD9D9D9).withOpacity(0.0),
                          ],
                          // Gradient from https://learnui.design/tools/gradient-generator.html
                          tileMode: TileMode.mirror,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 8.0.h, left: 16.w),
                          width: 185.w,
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 0.w, top: 12.h, bottom: 9.h),
                                child: Text(
                                  "Pay With Reliability",
                                  style: textColor187Font(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                style: textHintColor124Font(),
                              ),

                              // TextButton(onPressed: (){}, child: customtxt(txt: 'Pay Now', fontweight: FontWeight.w500, fontsize: 14.sp,))
                              Padding(
                                padding: EdgeInsets.only(top: 10.0.h),
                                child: SizedBox(
                                  width: 123.w,
                                  height: 42.h,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shadowColor:
                                            Colors.grey.withOpacity(0.5),
                                        elevation: 5,
                                        backgroundColor:
                                            const Color(0xFFA369BF),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(44.0.r)),
                                      ),
                                      onPressed: () {
                                        Get.toNamed(Routes.SECOND_PAGE);
                                      },
                                      child: Text(
                                        "Pay Now",
                                        style: textButtonColor145Font(),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            // width: 100.w,
                            child: Image.asset(
                              "assets/img.png",
                              height: 165.h,
                              width: 159.w,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: lftmainPadding.w),
                          child: Text(
                            "Our Clients",
                            style: textButtonColor145Font(
                                color: const Color(0xFF1C1C1C), fontSize: 16),
                          )),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.SECOND_PAGE);
                          },
                          child: Text('See All',
                              style: textHintColor124Font(
                                  color: const Color(0xFFA369BF))))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.0.h, left: lftmainPadding.w),
                  child: SizedBox(
                    height: 120.h,
                    width: Get.width,
                    child: Obx(() {
                      return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              ourClientDesign(
                                controller.collegeList[index].name,
                                controller.collegeList[index].image,
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: padding12.w,
                          );
                        },
                        itemCount: controller.collegeList.length,
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: lftmainPadding.w, top: topmainPadding.h),
                  child: CustomTxt(
                      txt: "Secure Sources Of Payment",
                      weight: FontWeight.w500,
                      size: 16.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: lftmainPadding.w,
                    right: 15.0.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MobileBanking("assets/ekpay.png"),
                      MobileBanking("assets/bkash.png"),
                      MobileBanking("assets/nogod.png"),
                      MobileBanking("assets/rocket.png"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      //  drawer: const Drawer(),
    );
  }

  Widget ourClientDesign(String title, String logo) {
    return SizedBox(
      height: 120.h,
      width: 105.w,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            height: 80.h,
            width: 100.w,
            padding: EdgeInsets.symmetric(
                horizontal: lftmainPadding.w, vertical: padding12.h),
            child: Image.asset(
              logo,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0.h),
            child: Text(
              title,
              style: textHintColor124Font(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget MobileBanking(String logo) {
    return Image.asset(
      logo,
      height: 70.h,
      width: 65.w,
    );
  }

  AppBar appbarDesign() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(
          left: 24.0.w,
        ),
        child: Image.asset(
          "assets/drawer_logo.png",
          height: 20.h,
          width: 31.w,
        ),
      ),
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
