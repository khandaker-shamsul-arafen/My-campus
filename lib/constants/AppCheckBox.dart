import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_campus/constants/app_textfield.dart';

class AppCheckBox extends StatefulWidget {
  AppCheckBox({Key? key}) : super(key: key);

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
          child: const CustomTxt(
              txt: "Monthly Tution Fee", weight: FontWeight.w400, size: 12),
        ),
        trailing: const CustomTxt(
            txt: "5000 Taka", weight: FontWeight.w400, size: 12),
      ),
    );
  }
}
