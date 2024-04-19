import 'package:flights_app/core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneFieldWidget extends StatelessWidget {
  const PhoneFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        hintStyle: AppStyles.styleMedium16,
        enabledBorder: AppStyles.outLineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: AppStyles.outLineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      initialCountryCode: 'SY',
      showCountryFlag: true,
      showDropdownIcon: true,
      disableLengthCheck: true,
      style: AppStyles.styleMedium16,
      dropdownTextStyle: AppStyles.styleMedium16,
    );
  }
}
