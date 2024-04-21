import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/features/flights_search_result/presentation/views/widgets/flight_time_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightDurationList extends StatefulWidget {
  const FlightDurationList({super.key});

  @override
  State<FlightDurationList> createState() => _FlightDurationListState();
}

class _FlightDurationListState extends State<FlightDurationList> {
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
            end: 10,
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
                text: '20 min',
              ),
            ),
          );
        },
      ),
    );
  }
}
