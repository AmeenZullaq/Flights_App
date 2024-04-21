import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/custom_container.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/pilot_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PilotInfoSection extends StatelessWidget {
  const PilotInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      topLeftRadius: 13,
      topRightRadius: 13,
      bottomLeftRadius: 13,
      bottomRightRadius: 13,
      child: PaddingDynamic(
        top: 24,
        bottom: 20,
        left: 20,
        right: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pilot information',
              style: AppStyles.styleSemiBold18.copyWith(
                color: AppColors.grey800,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(6),
              ),
              child: PaddingSymetric(
                horizontal: 16.w,
                vertical: 16.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PilotInfo(),
                    SizedBox(
                      height: 19.h,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: CustomContainer(
                            topText: 'Airplane',
                            bottomText: 'Cessna 172',
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        const Expanded(
                          child: CustomContainer(
                            topText: 'Hours flown',
                            bottomText: '1 250 hours',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const CustomContainer(
                      width: double.infinity,
                      topText: 'License',
                      bottomText: 'Commercial Pilot\'s License - CPL',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
