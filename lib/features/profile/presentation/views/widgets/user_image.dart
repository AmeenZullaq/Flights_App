import 'dart:io';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_colors.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_shadows.dart';
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
  XFile? pickedImage;
  File? image;

  void onImagePicker() {}
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        image == null
            ? SizedBox(
                height: 100.h,
                width: 100.w,
                child: const CircleAvatar(
                  backgroundImage: AssetImage(Assets.imagesPerson),
                ),
              )
            : SizedBox(
                height: 100.h,
                width: 100.w,
                child: CircleAvatar(
                  backgroundImage: FileImage(image!),
                ),
              ),
        GestureDetector(
          onTap: () {
            getBottomSheet(
              context,
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: PaddingAll(
                value: 20,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          pickedImage = await imagePicker.pickImage(
                            source: ImageSource.gallery,
                          );
                          if (pickedImage != null) {
                            image = File(pickedImage!.path);
                          }
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70.w,
                              color: AppColors.blue,
                            ),
                            const Text('Gallery'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          pickedImage = await imagePicker.pickImage(
                            source: ImageSource.camera,
                          );
                          if (pickedImage != null) {
                            image = File(pickedImage!.path);
                          }
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera,
                              size: 70.w,
                              color: AppColors.blue,
                            ),
                            const Text('Camera'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
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
              size: 24.w,
            ),
          ),
        ),
      ],
    );
  }
}
