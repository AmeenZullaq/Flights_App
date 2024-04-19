import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Center(
        child: SvgPicture.asset(
          Assets.imagesPlaneSvgrepoCom1,
        ),
      ),
    );
  }
}
