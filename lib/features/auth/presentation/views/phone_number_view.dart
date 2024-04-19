import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/features/auth/presentation/views/widgets/phone_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneNumberView extends StatelessWidget {
  const PhoneNumberView({super.key});

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
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Enter ',
                    style: AppStyles.styleBold30,
                  ),
                  TextSpan(
                    text: 'phone',
                    style: AppStyles.styleBold30.copyWith(
                      color: AppColors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'number',
              style: AppStyles.styleBold30.copyWith(
                color: AppColors.blue,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const PhoneFieldWidget(),
            const Expanded(
              child: SizedBox(),
            ),
            AppButton(
              text: 'Next',
              onTap: () {
                Navigator.pushNamed(context, RouteViews.enterNameView);
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
