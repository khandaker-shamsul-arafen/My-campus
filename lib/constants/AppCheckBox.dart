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
      child: ListTile(
        leading: Checkbox(
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
          title: Transform.translate(
              offset: Offset(-20, 0),
              child: Text(
                widget.txt,
                style: textHintColor124Font(color: const Color(0xFF000000)),
              )),
          trailing: Text(
            widget.number.toString(),
            style: textHintColor124Font(color: const Color(0xFF000000)),
          )),
    );
  }
}
