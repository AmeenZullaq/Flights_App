import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.keyBoardType = TextInputType.name,
    this.enabledBorderSideColor,
    this.focusedBorderSideColor,
    this.prefixWidget,
    this.hintText,
    this.borderRadius,
    this.suffixWidget,
    this.hintTextColor,
    this.onTap,
    this.prefixColor,
    this.controller,
    this.readOnly,
  });
  final TextInputType keyBoardType;
  final Color? enabledBorderSideColor;
  final Color? focusedBorderSideColor;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final String? hintText;
  final BorderRadius? borderRadius;
  final Color? hintTextColor;
  final void Function()? onTap;
  final Color? prefixColor;
  final TextEditingController? controller;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly ?? false,
      controller: controller,
      onTap: onTap,
      keyboardType: keyBoardType,
      cursorColor: AppColors.blue,
      cursorWidth: 1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 12.w),
        prefixIconColor: prefixColor,
        prefixIcon: EndPadding(
          end: 12,
          child: prefixWidget,
        ),
        suffixIcon: suffixWidget,
        hintText: hintText,
        hintStyle: AppStyles.styleRegular14.copyWith(
          color: hintTextColor ?? AppColors.grey400,
        ),
        prefixIconConstraints: const BoxConstraints(
          minHeight: 24,
          minWidth: 24,
        ),
        alignLabelWithHint: true,
        enabledBorder: AppStyles.outLineInputBorder(
          borderSideColor: enabledBorderSideColor,
          borderRadius: borderRadius,
        ),
        focusedBorder: AppStyles.outLineInputBorder(
          borderSideColor: focusedBorderSideColor,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
