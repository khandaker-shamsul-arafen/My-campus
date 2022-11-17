import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_campus/constants/app_text_style.dart';

class AppCheckBox extends StatefulWidget {
  final String txt;
  final int number;

  AppCheckBox({required this.txt, required this.number});

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool isChecked = false;
  String? selectValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0.h),
            child: SizedBox(
              width: 15.w,
              child: Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: const Color(0xFFA369BF),
                //The color to use when this checkbox is checked.
                //checkColor: Colors.black,
                // The color to use for the check icon when this checkbox is checked.
                value: isChecked,

                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0.w, top: 10.0.h),
            child: SizedBox(
              width: 110.w,
              child: Transform.translate(
                  offset: Offset(-20, 0),
                  child: Text(
                    widget.txt,
                    style: textHintColor124Font(color: const Color(0xFF000000)),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 140.0.w, top: 10.h),
            child: Text(
              widget.number.toString(),
              style: textHintColor124Font(color: const Color(0xFF000000)),
            ),
          )
        ],
      ),

      // ListTile(
      //   leading: Checkbox(
      //     activeColor: const Color(0xFFA369BF),
      //     //The color to use when this checkbox is checked.
      //     //checkColor: Colors.black,
      //     // The color to use for the check icon when this checkbox is checked.
      //     value: isChecked,
      //
      //     onChanged: (value) {
      //       setState(() {
      //         isChecked = value!;
      //       });
      //       },
      //     ),
      //     title: Transform.translate(
      //         offset: Offset(-20, 0),
      //         child: Text(
      //           widget.txt,
      //           style: textHintColor124Font(color: const Color(0xFF000000)),
      //         )),
      //     trailing: Text(
      //       widget.number.toString(),
      //       style: textHintColor124Font(color: const Color(0xFF000000)),
      //     )),
    );
  }
}
