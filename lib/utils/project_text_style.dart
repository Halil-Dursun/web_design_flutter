

import 'package:flutter/material.dart';

mixin ProjectTextStyle{
  TextStyle projectTextStyle({double fontSize = 16,Color color = Colors.black, bool isBold = false}){
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: isBold ? FontWeight.bold : null,
      fontFamily: 'TheNautigal',
    );
  }
}