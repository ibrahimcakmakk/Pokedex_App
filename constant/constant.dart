import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constant{

  Constant._();

   static String pokeballUrl = 'assets/poketop.jpg';
  static const String titlee = 'Pokedex';
  static TextStyle getTitleStyle (){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(30),
    );
  } 
  static TextStyle getPokemonNameStyle (){
    return  TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(35),
    );
  } 
  static TextStyle getTypeChipTextStyle (){
    return  TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  } 

  static double _calculateFontSize(double size){

    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    }else{
      return (size * 2).sp;
    }
  }

  static getPokeInfoTextStyle() {
    return TextStyle( fontSize: _calculateFontSize(16), color: Colors.black);
  }

  static getPokeInfoLabelStyle() {
    return TextStyle( fontSize: _calculateFontSize(20), color: Colors.black);
  }

}