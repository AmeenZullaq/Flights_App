import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/features/home/presentation/view/widgets/calendar_widget.dart';
import 'package:flights_app/features/home/presentation/view/widgets/pick_date_header.dart';
import 'package:flutter/material.dart';

class DateBottomSheet extends StatelessWidget {
  const DateBottomSheet({
    super.key,
    this.flag,
  });
  final bool? flag;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PickDateHeader(flag: flag),
          const SizedBox(
            height: 32,
          ),
          const CalendarWidget(),
          const SizedBox(
            height: 32,
          ),
          const Divider(
            color: Color(0xFFF2F4F7),
          ),
          const SizedBox(
            height: 32,
          ),
          const CalendarWidget(),
          const SizedBox(
            height: 8,
          ),
          AppButton(
            text: 'Find tour',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
