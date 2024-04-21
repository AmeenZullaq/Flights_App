import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static TextStyle styleSemiBold24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
  );
  static TextStyle styleSemiBold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
  );
  static TextStyle styleSemiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
  );
  static TextStyle styleRegular16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );
  static TextStyle styleRegular12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );
  static TextStyle styleRegular13 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
  );
  static TextStyle styleRegular10 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
  );
  static TextStyle styleRegular14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle styleRegular15 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
  );
  static TextStyle styleMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
  );
  static TextStyle styleMedium18 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
  );
  static TextStyle styleMedium14 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle styleMedium10 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10.sp,
  );
  static TextStyle styleMedium24 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24.sp,
  );
  static TextStyle styleBold30 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.sp,
  );
  static TextStyle styleBold24 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
  );
  static TextStyle styleBold20 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
  );

  static OutlineInputBorder outLineInputBorder({
    Color? borderSideColor,
    BorderRadius? borderRadius,
  }) {
    return OutlineInputBorder(
      borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: borderSideColor ?? AppColors.blue,
      ),
    );
  }
}
