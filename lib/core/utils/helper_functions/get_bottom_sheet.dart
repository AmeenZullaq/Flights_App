import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

Future<dynamic> getBottomSheet(
  BuildContext context, {
  required Widget child,
  double? height,
}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: AppColors.white,
    isScrollControlled: true,
    builder: (context) {
      return SizedBox(
        height: height ?? MediaQuery.sizeOf(context).height * .85,
        child: PaddingSymetric(
          horizontal: 20,
          vertical: 20,
          child: child,
        ),
      );
    },
  );
}
