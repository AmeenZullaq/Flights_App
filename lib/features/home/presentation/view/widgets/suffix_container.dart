import 'package:flutter/material.dart';

class SuffixContainer extends StatelessWidget {
  const SuffixContainer({super.key, this.onTap, this.child});
  final Function()? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFFF2F4F7),
          borderRadius: BorderRadius.circular(4),
        ),
        child: child,
      ),
    );
  }
}
