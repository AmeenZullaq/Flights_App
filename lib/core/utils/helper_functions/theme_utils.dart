import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

ThemeData getThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    fontFamily: 'Inter',
  );
}

PinTheme getPinTheme({
  required Color textColor,
  required Color borderColor,
}) {
  return PinTheme(
    height: 50.h,
    width: 50.w,
    textStyle: AppStyles.styleRegular16.copyWith(
      color: textColor,
    ),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: borderColor,
      ),
    ),
  );
}

OutlineInputBorder outLineInputBorder({
  Color? borderSideColor,
  BorderRadius? borderRadius,
}) {
  return OutlineInputBorder(
    borderRadius: borderRadius ??
        const BorderRadius.all(
          Radius.circular(8),
        ),
    borderSide: BorderSide(
      color: borderSideColor ?? AppColors.blue,
    ),
  );
}
