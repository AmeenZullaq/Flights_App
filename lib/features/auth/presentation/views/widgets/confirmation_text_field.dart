import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfirmatiomTextField extends StatelessWidget {
  const ConfirmatiomTextField({
    super.key,
    required this.first,
    required this.last,
  });
  final bool first;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        if (value.isNotEmpty && last == false) {
          FocusScope.of(context).nextFocus();
        }
        if (value.isEmpty && first == false) {
          FocusScope.of(context).previousFocus();
        }
      },
      inputFormatters: [LengthLimitingTextInputFormatter(1)],
      style: const TextStyle(
        color: Color(0xFF1D2939),
      ),
      cursorWidth: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        constraints: const BoxConstraints(
          maxHeight: 50,
          maxWidth: 50,
        ),
        enabledBorder: confirmOutLineInputBorder(),
        focusedBorder: confirmOutLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder confirmOutLineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(
          0xFFE4E7EC,
        ),
      ),
    );
  }
}
