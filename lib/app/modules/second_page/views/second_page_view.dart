import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/app_textfield.dart';
import '../../../routes/app_pages.dart';
import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  SecondPageView({Key? key}) : super(key: key);
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTxt(
                txt: "Give your Id",
                weight: FontWeight.w700,
                size: 18.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTxt(
                txt:
                    "Lorem Ipsum is simply dummy text of the printing and /n typesetting industry.",
                weight: FontWeight.w500,
                size: 12.sp,
                color: const Color(0xFF746A6A),
              ),
              SizedBox(
                height: 5.h,
              ),
              Card(
                elevation: 2,
                child: ListTile(
                  leading: Icon(IconData(0xe11b, fontFamily: 'MaterialIcons')),
                  title: const TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'Select your institute'),
                  ),
                  trailing: DropdownButton(
                    // Initial Value

                    // Down Arrow Icon
                    icon: const Icon(Icons.arrow_drop_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (Object? value) {},
                  ),
                ),
              ),
              SizedBox(
                width: 5.h,
              ),
              Card(
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: const TextField(
                    decoration:
                        InputDecoration.collapsed(hintText: 'Type Your Id'),
                  ),
                  trailing: DropdownButton(
                    // Initial Value

                    // Down Arrow Icon
                    icon: const Icon(Icons.arrow_drop_down),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (Object? value) {},
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA369BF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.THIRD_PAGE);
                  },
                  child: CustomTxt(
                    txt: 'Continue',
                    weight: FontWeight.w500,
                    size: 14.sp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
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
