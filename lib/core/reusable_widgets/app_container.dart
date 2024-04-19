import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,
    this.boxShadow,
    this.child,
    this.height,
    this.width,
    this.bottomLeftRadius = 0,
    this.bottomRightRadius = 0,
    this.topLeftRadius = 0,
    this.topRightRadius = 0,
    this.topPadding = 0,
    this.bottomPadding = 0,
    this.leftPadding = 0,
    this.rightPadding = 0,
    this.image,
  });
  final Widget? child;
  final List<BoxShadow>? boxShadow;
  final double? height;
  final double? width;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final double topLeftRadius;
  final double topRightRadius;
  final double topPadding;
  final double bottomPadding;
  final double leftPadding;
  final double rightPadding;
  final DecorationImage? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.only(
        bottom: bottomPadding.h,
        top: topPadding.h,
        left: leftPadding.w,
        right: rightPadding.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
          topLeft: Radius.circular(topLeftRadius),
          topRight: Radius.circular(topRightRadius),
        ),
        boxShadow: boxShadow,
        image: image,
      ),
      child: child,
    );
  }
}
