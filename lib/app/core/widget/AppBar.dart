import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_constraints.dart';

// ignore: must_be_immutable
AppBar appbarDesign(bool flag) {
  return (flag)
      ? AppBar(
          centerTitle: true,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(left: leftMainPadding - 7.w),
                child: IconButton(
                  icon: Image.asset(
                    "assets/drawer_logo.png",
                    height: 20.h,
                    width: 31.w,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              );
            },
          ),
          title: Image.asset(
            "assets/img_1.png",
            height: 23.h,
            width: 128.w,
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Color(0xFF4F4F4F)),
        )
      : AppBar(
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
