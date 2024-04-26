import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 29.h,
        ),
        Text(
          'Do you want to log out of the app?',
          style: AppStyles.styleSemiBold17.copyWith(
            color: const Color(0xFF1E252D),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        AppButton(
          text: 'Cancel',
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(
          height: 16.h,
        ),
        AppButton(
          text: 'Logout',
          color: AppColors.white,
          textColor: AppColors.blue,
          borderSideColor: AppColors.blue,
          onTap: () {},
        ),
        SizedBox(height: 20.h,),
      ],
    );
  }
}
