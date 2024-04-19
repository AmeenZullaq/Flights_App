import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/features/auth/presentation/views/widgets/confirmation_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConfirmatiomTextField(first: true, last: false),
                ConfirmatiomTextField(first: false, last: false),
                ConfirmatiomTextField(first: false, last: false),
                ConfirmatiomTextField(first: false, last: false),
                ConfirmatiomTextField(first: false, last: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
