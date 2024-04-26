import 'package:flights_app/core/reusable_widgets/app_container.dart';
import 'package:flights_app/core/reusable_widgets/padding.dart';
import 'package:flights_app/core/utils/constants/app_images.dart';
import 'package:flights_app/core/utils/constants/app_routes.dart';
import 'package:flights_app/core/utils/helper_functions/get_bottom_sheet.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/cards_number.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/custom_field.dart';
import 'package:flights_app/features/profile/presentation/views/widgets/logout_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: double.infinity,
      topLeftRadius: 16,
      topRightRadius: 16,
      child: PaddingSymetric(
        horizontal: 20,
        vertical: 20,
        child: Column(
          children: [
            CustomField(
              assetName: Assets.imagesBellSimple,
              text: 'Notifications',
              onTap: () {
                Navigator.pushNamed(context, Routes.notificationsView);
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomField(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              assetName: Assets.imagesTicketd,
              text: 'My tickets',
              onTap: () {
                Navigator.pushNamed(context, Routes.myTicketsView);
              },
            ),
            const CustomField(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              assetName: Assets.imagesCreditCard,
              text: 'My cards',
              endWidget: CardsNumber(),
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomField(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              assetName: Assets.imagesChatCenteredDots,
              text: 'Customer Service',
            ),
            CustomField(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              assetName: Assets.imagesSettings,
              text: 'Setting',
              onTap: () {
                Navigator.pushNamed(context, Routes.settingView);
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomField(
              assetName: Assets.imagesXCircle,
              text: 'Logout',
              onTap: () {
                getBottomSheet(
                  context,
                  height: MediaQuery.sizeOf(context).height * .40,
                  child: const LogoutBottomSheet(),
                );
              },
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
