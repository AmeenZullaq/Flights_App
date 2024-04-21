import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_route.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_time_container.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/start_of_flight_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightTimeSection extends StatelessWidget {
  const FlightTimeSection({super.key});

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
        bottom: 24,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Departure time',
              style: AppStyles.styleSemiBold18.copyWith(
                color: AppColors.grey800,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const StartOfFlightList(),
            SizedBox(
              height: 60.h,
            ),
            const FlightRoute(),
          ],
        ),
      ),
    );
  }
}

class DepartureTimeList extends StatefulWidget {
  const DepartureTimeList({super.key});

  @override
  State<DepartureTimeList> createState() => _DepartureTimeListState();
}

class _DepartureTimeListState extends State<DepartureTimeList> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return EndPadding(
            end: 12,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedIndex != index) {
                    selectedIndex = index;
                  }
                });
              },
              child: FlightTimeContainer(
                isSelected: selectedIndex == index,
                text: '9:00',
              ),
            ),
          );
        },
      ),
    );
  }
}
