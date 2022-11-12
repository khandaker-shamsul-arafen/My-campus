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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Card(
                  //  color: Colors.yellowAccent,
                    elevation: 2,
                    child: Container(
                      height: 150.h,
                      width: double.maxFinite,
                      //decoration: BoxDecoration(
                          color: Colors.amber,
                        //  gradient: const LinearGradient(
                      //  begin: Alignment.topLeft,
                       // end: Alignment(0.8, 1),
                      //  colors: <Color>[
                        //  Colors.red,
                        //  Colors.blue,
                       //   Colors.green
                     //   ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    //    tileMode: TileMode.mirror,
                //      ),
                        //  borderRadius: BorderRadius.circular(15.r)
                    //  ),
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
                                SizedBox(
                                  height:10.h ,
                                ),
                                // TextButton(onPressed: (){}, child: customtxt(txt: 'Pay Now', fontweight: FontWeight.w500, fontsize: 14.sp,))
                                SizedBox(
                                  width: 123.w,
                                  height: 35.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
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
                          Image.asset(
                            "assets/img.png",
                            height: 200.h,
                            width: 155.w,
                          ),
                        ],
                      ),
                    ),
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
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: const CustomTxt(
                        txt: "Our Clients", weight: FontWeight.w500, size: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.SECOND_PAGE);
                      },
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
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 15.0,
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
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset("assets/drawer_logo.png",height: 20.h,),
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
