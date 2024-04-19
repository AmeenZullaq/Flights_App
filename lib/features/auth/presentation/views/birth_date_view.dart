import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/features/auth/presentation/views/widgets/birth_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BirthDateView extends StatelessWidget {
  const BirthDateView({super.key});

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
              'Select your',
              style: AppStyles.styleBold30,
            ),
            Text(
              'date of birth',
              style: AppStyles.styleBold30.copyWith(
                color: AppColors.blue,
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            const BirthDatePicker(),
            const Expanded(
              child: SizedBox(),
            ),
            AppButton(
              text: 'Next',
              onTap: () {
                Navigator.pushNamed(context, RouteViews.confirmationView);
              },
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
