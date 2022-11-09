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
                  height: 150.h,
                  decoration: BoxDecoration(
                      //color: Colors.amber,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            const Color(0xFFA150DF).withOpacity(0.12),
                            const Color(0xFFD9D9D9).withOpacity(0.2)
                          ]),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.0.h, left: 12.w),
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
                            const CustomTxt(
                                txt:
                                    'Lorem Ipsum is simply dummy text\n of the printing and typesetting\n industry.',
                                weight: FontWeight.w400,
                                size: 12),
                            // TextButton(onPressed: (){}, child: customtxt(txt: 'Pay Now', fontweight: FontWeight.w500, fontsize: 14.sp,))
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFA369BF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
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
                            )
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/img.png",
                        height: 200.h,
                        width: 155.w,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0.h),
                    child: const CustomTxt(
                        txt: "Our Clients", weight: FontWeight.w500, size: 16),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA369Bf),
                          fontSize: 12,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  GetImageContainer(
                      txt: "Titumir College",
                      img1: 'assets/Titumir_college.png'),
                  GetImageContainer(
                      txt: "BAF Shaheen College",
                      img1: 'assets/baf_shaheen.png'),
                  GetImageContainer(
                      txt: "Govt.Keshab Chandra College",
                      img1: 'assets/logo.jpeg'),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12.0.h,
                  left: 8.0.h,
                ),
                child: CustomTxt(
                    txt: "Secure sources of payment",
                    weight: FontWeight.w500,
                    size: 16.sp),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/ekpay.png",
                      height: 100.h,
                      width: 80.w,
                    ),
                    Image.asset(
                      "assets/bkash.png",
                      height: 100.h,
                      width: 80.w,
                    ),
                    Image.asset(
                      "assets/Nogod.png",
                      height: 100.h,
                      width: 80.w,
                    ),
                    Image.asset(
                      "assets/rocket.png",
                      height: 100.h,
                      width: 80.w,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }

  AppBar appbarDesign() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Color(0xFF4F4F4F)),
    );
  }
}
