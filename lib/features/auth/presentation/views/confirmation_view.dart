import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/helper_functions/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaddingSymetric(
        horizontal: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .085,
            ),
            Text(
              'Enter the',
              style: AppStyles.styleBold30,
            ),
            Text(
              'confirmation code',
              style: AppStyles.styleBold30.copyWith(
                color: AppColors.blue,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Pinput(
              length: 5,
              separatorBuilder: (index) {
                return SizedBox(
                  width: 12.w,
                );
              },
              mainAxisAlignment: MainAxisAlignment.start,
              defaultPinTheme: getPinTheme(
                textColor: AppColors.grey800,
                borderColor: AppColors.grey200,
              ),
              errorPinTheme: getPinTheme(
                textColor: AppColors.error600,
                borderColor: AppColors.error500,
              ),
              focusedPinTheme: getPinTheme(
                textColor: AppColors.grey800,
                borderColor: AppColors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
