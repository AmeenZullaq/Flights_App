import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_shadows.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/customAppBar.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/ticket_image.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/ticket_info.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/ticket_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class TicketDetailsBody extends StatelessWidget {
  const TicketDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingSymetric(
      horizontal: 20,
      vertical: 20,
      child: Column(
        children: [
          const CustomAppBar(text: '673-843'),
          SizedBox(height: 40.h),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              TopPadding(
                top: 16,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: AppShadows.ticketShadow,
                  ),
                  child: Column(
                    children: [
                      const TicketImage(),
                      SizedBox(height: 16.h),
                      StartPadding(
                        start: 20,
                        child: Text(
                          'Cessna 172 familiarization flight from kronstadt',
                          style: AppStyles.styleMedium14.copyWith(
                            color: AppColors.grey800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const Divider(
                        thickness: 1,
                        color: AppColors.grey100,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const TicketInfo(),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Divider(
                        thickness: 1,
                        color: AppColors.grey100,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SvgPicture.asset(
                        Assets.imagesFrame,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '673-843',
                        style: AppStyles.styleRegular12.copyWith(
                          color: AppColors.grey800,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
              const TicketPrice(),
            ],
          ),
        ],
      ),
    );
  }
}
