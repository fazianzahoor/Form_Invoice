import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

var text, fontsize, fontweight,color;

CustomText(this.text,this.fontsize,this.fontweight,this.color);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontsize,fontWeight: fontweight,color: color),);
  }
}




class CustomIcon extends StatelessWidget {
  

var icon, size, color;

CustomIcon(this.icon, this.size, this.color);

  @override
  Widget build(BuildContext context) {
    return Icon(icon,size: size,color: color,);
  }
}