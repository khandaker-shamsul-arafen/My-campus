import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_textfield.dart';
import '../../../../constants/home_container.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
                child: Container(
                  height: 167.h,
                  //width: double.maxFinite,
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
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 8.0.h, left: 12.w),
                        width: 185.w,
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 0.w, top: 12.h, bottom: 9.h),
                              child: CustomTxt(
                                  txt: "Pay with Reliability",
                                  weight: FontWeight.w700,
                                  size: 18.sp),
                            ),
                            CustomTxt(
                              txt:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                              weight: FontWeight.w400,
                              size: 11.sp,
                              color: Color(0xFF656364),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            // TextButton(onPressed: (){}, child: customtxt(txt: 'Pay Now', fontweight: FontWeight.w500, fontsize: 14.sp,))
                            SizedBox(
                              width: 123.w,
                              height: 42.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.white10,
                                  backgroundColor: const Color(0xFFA369BF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0.r)),
                                ),
                                onPressed: () {
                                  Get.toNamed(Routes.SECOND_PAGE);
                                },
                                child: CustomTxt(
                                  txt: 'Pay Now',
                                  weight: FontWeight.w500,
                                  size: 14.sp,
                                  color: Colors.white,
                                ),
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
                            height: 200.h,
                            //  width: 155.w,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: CustomTxt(
                        txt: "Our Clients",
                        weight: FontWeight.w500,
                        size: 16.sp),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.SECOND_PAGE);
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFFA369Bf),
                          fontSize: 12.sp,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  const [
                    GetImageContainer(
                        txt: "Titumir College",
                        img1: 'assets/titumir_college.png'),

                    GetImageContainer(
                        txt: "BAF Shaheen ",
                        img1: 'assets/baf_shaheen.png'),
                    GetImageContainer(
                        txt: "    Govt.Keshab\n Chandra College",
                        img1: 'assets/jpe/logo.jpeg'),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: 20.0.w,
                  top: 20.h
                ),
                child: CustomTxt(
                    txt: "Secure Sources Of Payment",
                    weight: FontWeight.w500,
                    size: 16.sp),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0.w,
                  right: 15.0.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/ekpay.png",
                      height: 100.h,
                      width: 65.w,
                    ),
                    Image.asset(
                      "assets/bkash.png",
                      height: 100.h,
                      width: 70.w,
                    ),
                    Image.asset(
                      "assets/nogod.png",
                      height: 100.h,
                      width: 70.w,
                    ),
                    Image.asset(
                      "assets/rocket.png",
                      height: 100.h,
                      width: 70.w,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    //  drawer: const Drawer(),
    );
  }

  AppBar appbarDesign() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: Row(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0.r),
            child: Image.asset(
              "assets/drawer_logo.png",
              height: 20.h,
            ),
          ),
          SizedBox(
            width: 80.w,
          ),
          Row(

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
        ],
      ),
      backgroundColor: Colors.white,
     iconTheme: const IconThemeData(color: Color(0xFF4F4F4F)),
    );
  }
}
