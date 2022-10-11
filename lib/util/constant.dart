import 'package:flutter/material.dart';
import 'package:rick_and_morty/util/app_colors.dart';
import 'package:sizer/sizer.dart';

TextStyle customTextstyle() {
  return TextStyle(
    fontFamily: 'Get Schwifty',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryWhite,
  );
}

TextStyle smallTextStyle() {
  return TextStyle(
      fontFamily: 'CoromorantGaramond',
      fontSize: 14.sp,
      color: AppColors.primaryWhite,
      fontWeight: FontWeight.w400);
}

TextStyle MediumTextStyle() {
  return TextStyle(
      fontFamily: 'CoromorantGaramond',
      fontSize: 20.sp,
      color: AppColors.primaryWhite,
      fontWeight: FontWeight.w500);
}

TextStyle LightMediumTextStyle() {
  return TextStyle(
      fontFamily: 'CoromorantGaramond',
      fontSize: 20.sp,
      color: Colors.grey,
      fontWeight: FontWeight.w500);
}

TextStyle BigTextStyle() {
  return TextStyle(
      fontFamily: 'CoromorantGaramond',
      fontSize: 30.sp,
      color: AppColors.primaryWhite,
      fontWeight: FontWeight.w400);
}
