import 'package:flights_app/core/reusable_widgets/app_button.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/route_views.dart';
import 'package:flights_app/features/flights/presentation/views/widgets/arrival_form.dart';
import 'package:flights_app/features/flights/presentation/views/widgets/departure_form.dart';
import 'package:flights_app/features/flights/presentation/views/widgets/passengers_form.dart';
import 'package:flights_app/features/flights/presentation/views/widgets/text_header.dart';
import 'package:flights_app/features/flights/presentation/views/widgets/where_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightsBody extends StatelessWidget {
  const FlightsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingSymetric(
      horizontal: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .085,
          ),
          const TextHeader(),
          SizedBox(
            height: 40.h,
          ),
          const WhereForm(),
          SizedBox(
            height: 16.h,
          ),
          const DepartureForm(),
          SizedBox(
            height: 16.h,
          ),
          const ArrivalForm(),
          SizedBox(
            height: 16.h,
          ),
          const PassengersForm(),
          SizedBox(
            height: 16.h,
          ),
          AppButton(
            text: 'Find',
            onTap: () {
              Navigator.pushNamed(context, RouteViews.flightDetailsView);
            },
          ),
        ],
      ),
    );
  }
}
