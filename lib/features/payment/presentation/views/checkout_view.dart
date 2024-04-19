import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Payment',
          style: AppStyles.styleMedium16,
        ),
      ),
      body: PaddingDynamic(
        right: 20,
        left: 20,
        bottom: 40,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
                border: const Border.fromBorderSide(
                  BorderSide(
                    color: Color(0xFFE4E7EC),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4500 0910 4334 3443',
                    style: AppStyles.styleMedium16,
                  ),
                  SvgPicture.asset(
                    Assets.imagesPaymentMethods,
                    height: 24.h,
                    width: 36.w,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: const Border.fromBorderSide(
                        BorderSide(
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                    child: Text(
                      '10/3',
                      style: AppStyles.styleMedium16,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: const Border.fromBorderSide(
                        BorderSide(
                          color: Color(0xFFE4E7EC),
                        ),
                      ),
                    ),
                    child: Text(
                      'CVV/CVC',
                      style: AppStyles.styleRegular14.copyWith(
                        color: const Color(0xFF98A2B3),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColors.blue,
                  value: true,
                  onChanged: (value) {},
                ),
                const Text(
                  'Save card',
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            AppButton(
              text: 'pay',
              onTap: () {
                Navigator.pushNamed(context, RouteViews.successPaymentView);
              },
            )
          ],
        ),
      ),
    );
  }
}
