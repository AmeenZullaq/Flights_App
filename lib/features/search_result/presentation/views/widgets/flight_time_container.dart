import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

class FlightTimeContainer extends StatelessWidget {
  const FlightTimeContainer({
    super.key,
    required this.isSelected,
    required this.text,
  });
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: isSelected == false ? AppColors.grey : AppColors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: AppStyles.styleRegular15.copyWith(
          color: isSelected ? AppColors.white : const Color(0xFF61676C),
        ),
      ),
    );
  }
}
