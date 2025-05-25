import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = "Pokedex";

  static TextStyle getTitleTextStyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTextStyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: calculateFontSize(22),
    );
  }

  static TextStyle getTypeChipTextStyle(){
    return TextStyle(
      color: Colors.white,
      fontSize: calculateFontSize(20),
    );
  }

  static calculateFontSize(int size){
    if(ScreenUtil().orientation == Orientation.portrait){
      return size.sp;
    }else{
      return (size * 1.5).sp;
    }
  }

  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: calculateFontSize(20), fontWeight: FontWeight.bold, color: Colors.black);
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: calculateFontSize(16), color: Colors.black);
  }


}