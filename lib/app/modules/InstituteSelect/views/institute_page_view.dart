import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_campus/app/modules/app_bar/views/app_bar_view.dart';
import 'package:my_campus/constants/app_color.dart';
import 'package:my_campus/constants/app_text_style.dart';
import 'package:my_campus/model/college_model.dart';

import '../../../../AppBar.dart';
import '../../../../constants/app_constraints.dart';
import '../../../routes/app_pages.dart';
import '../controllers/institute_page_controller.dart';

class InstituteSelectPageView extends GetView<InstitutePageController> {
  const InstituteSelectPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarDesign(false),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: 8.0.h, left: leftMainPadding, right: rightMainPadding),
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
                padding: EdgeInsets.only(top: 10.0.h, bottom: 10.0.h),
                child: SizedBox(
                  height: 30.h,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: textButtonColor145Font(
                        color: AppColor.hintColor, fontSize: 12),
                  ),
                ),
              ),

              SizedBox(
                height: 25.h,
                child: institute(
                    "assets/txt_field_icon.png", 'Select your Institute', true),
              ),

              const Divider(
                thickness: 1,
              ),

              SizedBox(
                  height: 35.h,
                  child: institute(
                      "assets/person_icon.png", 'Type Your Id', false)),

              const Divider(
                thickness: 1,
              ),

              Padding(
                padding: EdgeInsets.only(top: 30.0.h),
                child: SizedBox(
                    width: double.infinity,
                    height: 60.h,
                    child: AppBarView(
                      txt: "Continue",
                      page: Routes.THIRD_PAGE,
                      background_color: const Color(0xFFA369BF),
                      txt_color: AppColor.txtbuttonColor,
                      border_coor: const Color(0xFFA369BF),
                    )
                    //
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget institute(
    String icon,
    String txt,
    bool dropdowne,
  ) {
    return (dropdowne)
        ? Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  icon,
                  height: 19.h,
                  width: 19.w,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0.w),
                    child: SizedBox(
                        width: 100.w,
                        child: Text(
                          controller.dropdownValue.value,
                          style: textHintColor124Font(
                              fontSize: 16, color: const Color(0xFF1C1C1C)),
                        )),
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: SizedBox(
                    height: 50.h,
                    width: 100.w,
                    child: DropdownButton<CollegeModel>(
                      // value:  controller.dropdownValue.value,
                      // Initial Value
                      isExpanded: true,
                      // Down Arrow Icon
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        //color: Colors.amber,
                      ),

                      // Array list of items
                      items: controller.homeController.collegeList
                          .map<DropdownMenuItem<CollegeModel>>((var value) {
                        return DropdownMenuItem<CollegeModel>(
                          value: value,
                          child: Text(value.name),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        controller.dropdownValue.value = newValue?.name ?? "";
                        debugPrint(controller.dropdownValue.value);
                      },
                    ),
                  ),
                )
              ],
            );
          })
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                icon,
                height: 19.h,
                width: 19.w,
              ),
              Expanded(
                child: Transform.translate(
                  offset: const Offset(-16, 0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.0.w),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: txt,
                        hintStyle: textHintColor124Font(
                            fontSize: 16, color: const Color(0xFF746A6A)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}


