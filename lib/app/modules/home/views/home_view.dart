import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_textfield.dart';
import '../../../../constants/home_container.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(),
      body: SafeArea(
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
                    ]
                  ),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,


                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:8.0.h,left: 12.w),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [
                         Padding(
                           padding:  EdgeInsets.only(left:0.w, top: 12.h,bottom: 9.h),
                           child:
                           customtxt(txt: "Pay with Reliability", fontweight: FontWeight.w700, fontsize:18.sp ),
                         ),
                          customtxt(txt:'Lorem Ipsum is simply dummy text\n of the printing and typesetting\n industry.' , fontweight: FontWeight.w400, fontsize: 12),
                         // TextButton(onPressed: (){}, child: customtxt(txt: 'Pay Now', fontweight: FontWeight.w500, fontsize: 14.sp,))
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFA369BF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                              ),
                            ), onPressed: () {  }, child: customtxt(txt: 'Pay Now', fontweight: FontWeight.w500, fontsize: 14.sp,color: Colors.white,),
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
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 8.0.h),
                  child: customtxt(txt: "Our Clients", fontweight: FontWeight.w500, fontsize: 16),
                ),
                TextButton(onPressed: (){}, child: const Text(
                  'See All',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA369Bf),
                    fontSize: 12,
                  ),
                )
                )
              ],
            ),
             SizedBox(
              height: 8.h,
              
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Get_Image_Container(txt: "Titumir College", img1: 'assets/Titumir_college.png'),
               Get_Image_Container(txt: "BAF Shaheen College", img1: 'assets/baf_shaheen.png'),
               Get_Image_Container(txt: "Govt.Keshab Chandra College", img1: 'assets/logo.jpeg'),

             ],
           ),
            SizedBox(height: 10.h,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customtxt(txt: "Secure sources of payment", fontweight: FontWeight.w500, fontsize: 16.sp),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/ekpay.png",height: 100,width: 80,),
                  Image.asset("assets/bkash.png",height: 100,width: 80,),
                  Image.asset("assets/Nogod.png",height: 100,width: 80,),
                  Image.asset("assets/rocket.png",height: 100,width: 80,),

                ],
              ),
            )


          ],
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
          customtxt(
            txt: "My Campus",
            fontweight: FontWeight.w700,
            fontsize: 16.sp,
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
