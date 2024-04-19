import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

class BirthDatePicker extends StatelessWidget {
  const BirthDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: CupertinoDatePicker(
        backgroundColor: AppColors.white,
        minimumYear: 1950,
        maximumYear: DateTime.now().year,
        initialDateTime: DateTime(2000, 1, 1),
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (dateTime) {},
      ),
    );
  }
}
