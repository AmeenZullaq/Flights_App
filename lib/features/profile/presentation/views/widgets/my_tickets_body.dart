import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/customAppBar.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTicketsBody extends StatelessWidget {
  const MyTicketsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingSymetric(
      horizontal: 20,
      vertical: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            text: 'My tickets',
          ),
          SizedBox(
            height: 40.h,
          ),
          const Text(
            'Today',
            style: TextStyle(
              color: AppColors.grey500,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          const Ticket(),
        ],
      ),
    );
  }
}
