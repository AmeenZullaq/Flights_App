import 'package:flights_app/core/reusable_widgets/app_bottom_navigation_bar.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/features/flights/presentation/views/flights_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.grey,
      bottomNavigationBar: AppBottomNavigationBar(currentIndex: 0),
      body: FlightsView(),
    );
  }
}

// class MainView extends StatefulWidget {
//   const MainView({super.key});

//   @override
//   State<MainView> createState() => _MainViewState();
// }

// class _MainViewState extends State<MainView> {
//   int currentIndex = 0;
//   List<Widget> views = const [
//     MainViewBody(),
//     FlightsView(),
//   ];

//   void onSelectedItem(int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.grey,
//       body: views[currentIndex],
//       bottomNavigationBar: AppBottomNavigationBar(
//         currentIndex: currentIndex,
//         onSelectedItem: onSelectedItem,
//       ),
//     );
//   }
// }
