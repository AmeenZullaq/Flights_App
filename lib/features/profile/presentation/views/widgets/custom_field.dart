import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.assetName,
    required this.text,
    this.borderRadius,
    this.onTap,
    this.endWidget,
  });
  final String assetName;
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final Function()? onTap;
  final Widget? endWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 12.h,
        ),
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          color: AppColors.grey,
        ),
        child: Row(
          children: [
            SvgPicture.asset( 
              assetName,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(
              text,
              style: AppStyles.styleRegular14.copyWith(
                color: AppColors.grey800,
              ),
            ),
            const Spacer(),
            SizedBox(
              child: endWidget,
            ),
          ],
        ),
      ),
    );
  }
}
