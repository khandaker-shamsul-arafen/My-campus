import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customtxt extends StatelessWidget {
  final String txt;
  final FontWeight fontweight;
  final double fontsize;
    Color color;
  final  dsf;
  customtxt({required this.txt,required this.fontweight,required this.fontsize,  this.color=Colors.black,  this.dsf='Roboto',});

  @override
  Widget build(BuildContext context) {
   // return Text(txt,style: TextStyle(fontWeight: fontweight,fontSize:fontsize,color: color,fontFamily: dsf) );
    return Text(txt,style: TextStyle(fontWeight:fontweight,fontSize: fontsize,color: color,fontFamily: dsf ),);
  }
}
