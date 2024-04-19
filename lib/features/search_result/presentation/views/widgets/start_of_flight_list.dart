import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/features/search_result/presentation/views/widgets/flight_time_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartOfFlightList extends StatefulWidget {
  const StartOfFlightList({super.key});

  @override
  State<StartOfFlightList> createState() => _StartOfFlightListState();
}

class _StartOfFlightListState extends State<StartOfFlightList> {
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
                text: '7:00',
              ),
            ),
          );
        },
      ),
    );
  }
}
