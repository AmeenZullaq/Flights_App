import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/customAppBar.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/notifications_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingSymetric(
      horizontal: 20,
      vertical: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            text: 'Notifications',
          ),
          SizedBox(
            height: 32.h,
          ),
          const Text(
            'Today',
            style: TextStyle(
              color: AppColors.grey500,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const NotificationsField(
            insideContainerColor: AppColors.purple,
            assetName: Assets.imagesAirplaneTilt,
            firstText: 'Air tour has been processed',
            secondText: 'Airfield: Bychey Ploye, July 30th',
          ),
          SizedBox(
            height: 40.h,
          ),
          const Text(
            'November 16, 2021',
            style: TextStyle(
              color: AppColors.grey500,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const NotificationsField(
            insideContainerColor: AppColors.mint,
            assetName: Assets.imagesCoinVertical,
            firstText: 'Air tour has been processed',
            secondText: 'Airfield: Bychey Ploye, July 30th',
          ),
          SizedBox(
            height: 16.h,
          ),
          const NotificationsField(
            insideContainerColor: AppColors.blueLight,
            assetName: Assets.imagesWind,
            firstText: 'Air tour has been processed',
            secondText: 'Airfield: Bychey Ploye, July 30th',
          ),
          SizedBox(
            height: 40.h,
          ),
          const Text(
            'November 16, 2021',
            style: TextStyle(
              color: AppColors.grey500,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const NotificationsField(
            insideContainerColor: AppColors.mint,
            assetName: Assets.imagesCoinVertical,
            firstText: 'Air tour has been processed',
            secondText: 'Airfield: Bychey Ploye, July 30th',
          ),
          SizedBox(
            height: 16.h,
          ),
          const NotificationsField(
            insideContainerColor: AppColors.pink,
            assetName: Assets.imagesHandsClapping,
            firstText: 'Air tour has been processed',
            secondText: 'Airfield: Bychey Ploye, July 30th',
          ),
        ],
      ),
    );
  }
}
