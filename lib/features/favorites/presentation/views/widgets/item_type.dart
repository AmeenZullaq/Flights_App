import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemType extends StatelessWidget {
  const ItemType({
    super.key,
    required this.text,
    required this.isSelected,
  });
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return EndPadding(
      end: 12,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 12.w,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue : AppColors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: AppStyles.styleRegular15.copyWith(
            color: isSelected ? AppColors.white : const Color(0xFF61676C),
          ),
        ),
      ),
    );
  }
}
