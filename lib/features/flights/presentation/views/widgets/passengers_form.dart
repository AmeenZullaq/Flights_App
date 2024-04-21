import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/app_text_field.dart';
import 'package:flights_app/core/reusable_widgets/counter_suffix_widget.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_shadows.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PassengersForm extends StatelessWidget {
  const PassengersForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      leftPadding: 16,
      rightPadding: 16,
      topLeftRadius: 8,
      topRightRadius: 8,
      bottomLeftRadius: 8,
      bottomRightRadius: 8,
      boxShadow: AppShadows.textFieldShadow,
      child: AppTextField(
        readOnly: true,
        enabledBorderSideColor: AppColors.white,
        focusedBorderSideColor: AppColors.white,
        prefixWidget: SvgPicture.asset(
          Assets.imagesSmileyWink,
        ),
        hintText: 'Passengers',
        suffixWidget: const CounterSuffixWidget(),
      ),
    );
  }
}
