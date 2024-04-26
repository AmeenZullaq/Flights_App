import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/customAppBar.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingSymetric(
      horizontal: 20.w,
      vertical: 20.h,
      child: Column(
        children: [
          const CustomAppBar(
            text: 'Settings',
          ),
          SizedBox(
            height: 40.h,
          ),
          CustomField(
            assetName: Assets.imagesGlobeHemisphereWest,
            text: 'Application language',
            endWidget: Text(
              'English',
              style: AppStyles.styleRegular12.copyWith(
                color: AppColors.grey500,
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomField(
            assetName: Assets.imagesNotification,
            text: 'Push notifications',
            endWidget: SizedBox(
              height: 24.h,
              child: Switch(
                activeTrackColor: AppColors.blue,
                value: true,
                onChanged: (value) {},
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const CustomField(
            assetName: Assets.imagesAirplaneBlue,
            text: 'About us',
          ),
        ],
      ),
    );
  }
}
