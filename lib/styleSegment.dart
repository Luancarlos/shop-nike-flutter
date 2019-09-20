import 'package:flutter/material.dart';

class StyleSegment {
  Color color;
  TextStyle styleSegment;

  StyleSegment({this.color}) {
    styleSegment = TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: color);
  }



}