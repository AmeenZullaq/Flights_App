import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'By continuing, you agree to the terms of use and',
          style: AppStyles.styleRegular13.copyWith(
            color: AppColors.blue,
          ),
        ),
        Text(
          'Privacy policy',
          style: AppStyles.styleRegular13.copyWith(
            color: AppColors.blue,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        PaddingSymetric(
          horizontal: 20,
          child: AppButton(
            text: 'Book for 10,000 ₽',
            onTap: () {
              Navigator.pushNamed(context, RouteViews.checkoutView);
            },
          ),
        ),
      ],
    );
  }
}
