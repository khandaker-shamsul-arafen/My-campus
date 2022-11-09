import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTxt extends StatelessWidget {
  final String txt;
  final FontWeight weight;
  final double size;
  final Color color;
  final dsf;

  const CustomTxt({
    super.key,
    required this.txt,
    required this.weight,
    required this.size,
    this.color = Colors.black,
    this.dsf = 'Roboto',
  });

  @override
  Widget build(BuildContext context) {
    // return Text(txt,style: TextStyle(fontWeight: fontweight,fontSize:fontsize,color: color,fontFamily: dsf) );
    return Text(
      txt,
      style: TextStyle(
          fontWeight: weight, fontSize: size, color: color, fontFamily: dsf),
    );
  }
}
