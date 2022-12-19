import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/app_text_style.dart';

class CustomButton extends StatefulWidget {
  final String txt;
  final String page;
  final Color backgroundColor;
  final Color borderColor;
  final Color txtColor;
  final bool isbSelected;
  final bool iseSelected;

  const CustomButton({
    super.key,
    required this.txt,
    required this.page,
    required this.backgroundColor,
    required this.borderColor,
    required this.txtColor,
    required this.isbSelected,
    required this.iseSelected,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  // get borderColor => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (widget.isbSelected || widget.iseSelected)
          ? SizedBox(
              height: 60.h,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: widget.backgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    side: BorderSide(
                      width: 1.0,
                      color: widget.borderColor,
                    )),
                onPressed: () {
                  Get.toNamed(widget.page);
                },
                child: Text(
                  widget.txt,
                  style: textButtonColor145Font(color: widget.txtColor),
                ),
              ),
            )
          : SizedBox(
              height: 60.h,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDFDFDF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    side: BorderSide(
                      width: 1.0,
                      color: widget.borderColor,
                    )),
                onPressed: () {
                  Null;
                  // Get.toNamed(widget.page);
                },
                child: Text(
                  widget.txt,
                  style: textButtonColor145Font(color: widget.txtColor),
                ),
              ),
            ),
    );
  }
}
