import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/user_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const UserImage(),
        SizedBox(
          height: 16.h,
        ),
        Text(
          'David J',
          style: AppStyles.styleSemiBold24.copyWith(
            color: AppColors.grey800,
          ),
        ),
        Text(
          '+1 555 555 55 55',
          style: AppStyles.styleMedium14.copyWith(
            color: const Color(0xFF667085),
          ),
        ),
      ],
    );
  }
}
