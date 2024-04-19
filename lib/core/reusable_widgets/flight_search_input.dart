import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class FlightSearchInput extends StatelessWidget {
  const FlightSearchInput({
    super.key,
    this.firstHint,
    this.firstPrefixWidget,
    this.firstSuffixWidget,
    this.firstOnTap,
    this.secondtHint,
    this.secondPrefixWidget,
    this.secondSuffixWidget,
    this.secondOnTap,
    this.firstHintColor,
    this.secondHintColor,
  });
  final String? firstHint;
  final Widget? firstPrefixWidget;
  final Widget? firstSuffixWidget;
  final Function()? firstOnTap;
  final Color? firstHintColor;
  final String? secondtHint;
  final Widget? secondPrefixWidget;
  final Widget? secondSuffixWidget;
  final Function()? secondOnTap;
  final Color? secondHintColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppContainer(
          leftPadding: 16,
          rightPadding: 16,
          topLeftRadius: 8,
          topRightRadius: 8,
          boxShadow: AppStyles.textFieldShadow,
          child: AppTextField(
            onTap: firstOnTap,
            readOnly: true,
            hintText: firstHint,
            hintTextColor: firstHintColor,
            enabledBorderSideColor: AppColors.white,
            focusedBorderSideColor: AppColors.white,
            prefixWidget: firstPrefixWidget,
            suffixWidget: firstSuffixWidget,
          ),
        ),
        AppContainer(
          leftPadding: 16,
          rightPadding: 16,
          bottomLeftRadius: 8,
          bottomRightRadius: 8,
          boxShadow: AppStyles.textFieldShadow,
          child: AppTextField(
            onTap: secondOnTap,
            readOnly: true,
            hintText: secondtHint,
            hintTextColor: secondHintColor,
            enabledBorderSideColor: AppColors.white,
            focusedBorderSideColor: AppColors.white,
            prefixWidget: secondPrefixWidget,
            suffixWidget: secondSuffixWidget,
          ),
        ),
      ],
    );
  }
}
