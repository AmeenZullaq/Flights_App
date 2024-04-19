import 'package:flights_app/features/home/presentation/view/widgets/helpful_info_section.dart';
import 'package:flights_app/features/home/presentation/view/widgets/extreme_airplane_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ExtremeAirplaneSection(),
          SizedBox(
            height: 16.h,
          ),
          const HelpfulInfoSection(),
        ],
      ),
    );
  }
}
