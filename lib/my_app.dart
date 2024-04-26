import 'package:flights_app/core/reusable_widgets/app_bottom_navigation_bar.dart';
import 'package:flights_app/core/utils/constants/app_routes.dart';
import 'package:flights_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/helper_functions/theme_utils.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final List<Widget> views = AppConstants.views;
  void onSelectedItem(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: Routing.appRoutes,
          theme: getThemeData(),
          home: Scaffold(
            bottomNavigationBar: AppBottomNavigationBar(
              currentIndex: currentIndex,
              onSelectedItem: onSelectedItem,
            ),
            body: views[currentIndex],
          ),
        );
      },
    );
  }
}
