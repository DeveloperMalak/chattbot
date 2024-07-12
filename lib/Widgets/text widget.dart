import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {//ghere this is our class whaich is dstateless widget
  final String label; //we have mae instance vauble here which will be used later in this course
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const TextWidget({Key? key,required this.label,this.fontSize=18,this.color, this.fontWeight,}) : super(key: key);//here we have passed the constructor for it
  @override
  Widget build(BuildContext context) {
    return Text(label,style:TextStyle(color:color?? Colors.white,//we building the beauiful ui fo r our app will be used later in htie s code
    fontWeight:fontWeight?? FontWeight.w400));
  }
}
