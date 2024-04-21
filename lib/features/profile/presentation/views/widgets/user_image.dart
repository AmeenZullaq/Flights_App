import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_shadows.dart';
import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flights_app/core/utils/helper_functions/get_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class UserImage extends StatefulWidget {
  const UserImage({
    super.key,
  });

  @override
  State<UserImage> createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  ImagePicker imagePicker = ImagePicker();
  var image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        image != null
            ? SizedBox(
                height: 100.h,
                width: 100.w,
                child: CircleAvatar(
                  backgroundImage: MemoryImage(image),
                ),
              )
            : SizedBox(
                height: 100.h,
                width: 100.w,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(Assets.imagesImages),
                ),
              ),
        GestureDetector(
          onTap: () async {
            image = await imagePicker.pickImage(
              source: ImageSource.gallery,
            );
            setState(() {});
            // getBottomSheet(
            //   context,
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           Text(
            //             'Add photo',
            //             style: AppStyles.styleSemiBold18,
            //           ),
            //           IconButton(
            //             onPressed: () {},
            //             icon: Icon(
            //               Icons.cancel,
            //               color: Colors.grey[300],
            //               size: 20,
            //             ),
            //             padding: EdgeInsets.zero,
            //             visualDensity:
            //                 const VisualDensity(horizontal: -4, vertical: -4),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 32.h,
            //       ),
            //     ],
            //   ),
            // );
          },
          child: Container(
            height: 28.h,
            width: 28.w,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: AppShadows.editIconShadow,
            ),
            child: Icon(
              Icons.edit,
              size: 19.w,
            ),
          ),
        ),
      ],
    );
  }
}
