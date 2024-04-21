import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

class PassengersNumber extends StatelessWidget {
  const PassengersNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      topLeftRadius: 50,
      bottomLeftRadius: 50,
      bottomRightRadius: 50,
      topRightRadius: 50,
      topPadding: 4,
      bottomPadding: 4,
      leftPadding: 8,
      rightPadding: 10,
      child: Text(
        'Passengers: 4',
        style: AppStyles.styleRegular10,
      ),
    );
  }
}
