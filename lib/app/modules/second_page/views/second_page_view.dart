import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/constants/app_color.dart';
import 'package:my_campus/constants/app_text_style.dart';

import '../../../../constants/app_button.dart';
import '../../../../constants/app_constraints.dart';
import '../../../routes/app_pages.dart';
import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  const SecondPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 8.0.h, left: lftmainPadding.w + 6.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //   Text("xdffksdf",style: TextStyle(fontFamily: Font),);
              Text(
                "Give your ID",
                style: textColor187Font(),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: textButtonColor145Font(
                      color: AppColor.hintColor, fontSize: 12),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 5.0.h,
                ),
                child: Institute(
                    "assets/txt_field_icon.png", 'Select your Institute', true),
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: lftmainPadding.w, right: rgtmainPadding.w - 5.w),
                child: const Divider(
                  thickness: 1,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 5.0.h,
                ),
                child:
                    Institute("assets/person_icon.png", 'Type Your Id', false),
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: lftmainPadding.w, right: rgtmainPadding.w - 5.w),
                child: const Divider(
                  thickness: 1,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 5.0.h),
                child: SizedBox(
                    width: double.infinity,
                    height: 60.h,
                    child: AppButton(
                        txt: "Continue",
                        page: Routes.THIRD_PAGE,
                        background_color: const Color(0xFFA369BF),
                        txt_color: AppColor.txtbuttonColor)
                    //
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Institute(
    String icon,
    String txt,
    bool dropdowne,
  ) {
    return ListTile(
      leading: Image.asset(
        icon,
        height: 19.h,
        width: 19.w,
      ),
      title: (dropdowne)
          ? Obx(() {
              return Text(controller.dropdownValue.value);
            })
          : Transform.translate(
              offset: const Offset(-16, 0),
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: txt,
                  hintStyle: textHintColor124Font(
                      fontSize: 16, color: const Color(0xFF746A6A)),
                ),
              ),
            ),
      trailing: (dropdowne)
          ? DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                // value:  controller.dropdownValue.value,
                // Initial Value

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: controller.options
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  controller.dropdownValue.value = newValue ?? "";
                  debugPrint(controller.dropdownValue.value);
                },
              ),
            )
          : SizedBox(
              width: 1.w,
            ),
    );
  }
}


AppBar appbarDesign() {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Image.asset(
      "assets/img_1.png",
      height: 23.h,
      width: 128.w,
    ),
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Color(0xFF4F4F4F)),
  );
}
