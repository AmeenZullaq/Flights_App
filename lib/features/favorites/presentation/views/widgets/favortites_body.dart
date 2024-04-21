import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/features/favorites/presentation/views/widgets/item_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesBody extends StatefulWidget {
  const FavoritesBody({super.key});

  @override
  State<FavoritesBody> createState() => _FavoritesBodyState();
}

class _FavoritesBodyState extends State<FavoritesBody> {
  int currentIndex = 0;
  List<String> text = [
    'Air tours',
    'Flights',
  ];

  @override
  Widget build(BuildContext context) {
    return PaddingSymetric(
      horizontal: 20,
      vertical: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favorites',
            style: AppStyles.styleBold20.copyWith(
              color: const Color(0xFF1E252D),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            children: List.generate(
              2,
              (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (currentIndex != index) {
                        currentIndex = index;
                      }
                    });
                  },
                  child: ItemType(
                    text: text[index],
                    isSelected: currentIndex == index,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
