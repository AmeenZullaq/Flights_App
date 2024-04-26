import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_routes.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterNameView extends StatelessWidget {
  const EnterNameView({super.key});

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
                    text: 'first ',
                    style: AppStyles.styleBold30.copyWith(
                      color: AppColors.blue,
                    ),
                  ),
                  TextSpan(
                    text: '&',
                    style: AppStyles.styleBold30,
                  ),
                ],
              ),
            ),
            Text(
              'Last name',
              style: AppStyles.styleBold30.copyWith(
                color: AppColors.blue,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const AppTextField(
              keyBoardType: TextInputType.name,
            ),
            SizedBox(
              height: 20.h,
            ),
            const AppTextField(
              keyBoardType: TextInputType.name,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            AppButton(
              text: 'Next',
              onTap: () {
                Navigator.pushNamed(context, Routes.birthDateView);
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
