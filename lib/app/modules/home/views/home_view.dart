import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../AppBar.dart';
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
      appBar: appbarDesign(true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: leftMainPadding,
                    right: rightMainPadding,
                    top: topMainPadding - 12.h),
                child: Container(
                  height: 167.h,
                  width: 339.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          const Color(0xFFA150Df).withOpacity(0.12),
                          const Color(0xFFD9D9D9).withOpacity(0.0),
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
                                      shadowColor: Colors.grey.withOpacity(0.5),
                                      elevation: 5,
                                      backgroundColor: const Color(0xFFA369BF),
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
                        padding: EdgeInsets.only(left: leftMainPadding.w),
                        child: Text(
                          "Our Clients",
                          style: textButtonColor145Font(
                              color: const Color(0xFF1C1C1C), fontSize: 16),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.CLIENT_DETAILS);
                        },
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                                decoration: TextDecoration.underline)),
                        child: Text('See All',
                            style: textHintColor124Font(
                              color: const Color(0xFFA369BF),
                            )))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.0.h, left: leftMainPadding.w),
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
                          width: Padding12.w,
                        );
                      },
                      itemCount: controller.collegeList.length,
                    );
                  }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: leftMainPadding.w, top: topMainPadding.h),
                child: CustomTxt(
                    txt: "Secure Sources Of Payment",
                    weight: FontWeight.w500,
                    size: 16.sp),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: leftMainPadding.w,
                  right: 15.0.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    mobileBanking("assets/ekpay.png"),
                    mobileBanking("assets/bkash.png"),
                    mobileBanking("assets/nogod.png"),
                    mobileBanking("assets/rocket.png"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("User email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              // color: Colors.green,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.contacts),
                    title: const Text("Contact Us"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            )
          ],
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
                horizontal: leftMainPadding.w, vertical: Padding12.h),
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

  Widget mobileBanking(String logo) {
    return Image.asset(
      logo,
      height: 70.h,
      width: 65.w,
    );
  }
}
