import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SuccessPaymentView extends StatelessWidget {
  const SuccessPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: PaddingDynamic(
        left: 20,
        right: 20,
        bottom: 40,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              SvgPicture.asset(
                Assets.imagesCardTick,
                height: 120.h,
                width: 120.w,
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Paid',
                style: AppStyles.styleSemiBold24.copyWith(
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'In case of flight cancellation the',
                style: AppStyles.styleRegular16.copyWith(
                  color: AppColors.grey,
                ),
              ),
              Text(
                'Imoney will be refunded',
                style: AppStyles.styleRegular16.copyWith(
                  color: AppColors.grey,
                ),
              ),
              const Spacer(),
              AppButton(
                color: AppColors.white,
                textColor: AppColors.blue,
                text: 'Perfect',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
