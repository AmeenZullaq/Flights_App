import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: PaddingSymetric(
        horizontal: 20,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .33,
              ),
              SvgPicture.asset(
                Assets.imagesIconAndTitle,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'No Connection',
                style: AppStyles.styleSemiBold24.copyWith(
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'No internet connection, check the',
                style: AppStyles.styleRegular14.copyWith(
                  color: AppColors.grey,
                ),
              ),
              Text(
                'connection and try again',
                style: AppStyles.styleRegular14.copyWith(
                  color: AppColors.grey,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              AppButton(
                text: 'Try again',
                color: AppColors.white,
                textColor: AppColors.blue,
                onTap: () {},
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
