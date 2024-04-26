import 'package:flutter/material.dart';

abstract class AppShadows {
  static List<BoxShadow> textFieldShadow = [
    BoxShadow(
      blurRadius: 24,
      spreadRadius: -4,
      offset: const Offset(0, 5),
      color: const Color(0xFF101828).withOpacity(0.15),
    ),
    BoxShadow(
      blurRadius: 10,
      spreadRadius: -4,
      offset: const Offset(0, 15),
      color: const Color(0xFF101828).withOpacity(0.02),
    ),
  ];
  static List<BoxShadow> navigationBarShadow = [
    BoxShadow(
      blurRadius: 20,
      spreadRadius: 0,
      offset: const Offset(0, 3),
      color: const Color(0xFF475159).withOpacity(0.15),
    ),
  ];
  static List<BoxShadow> editIconShadow = [
    BoxShadow(
      blurRadius: 3,
      spreadRadius: 0,
      offset: const Offset(0, 1),
      color: const Color(0xFF101828).withOpacity(0.10),
    ),
    BoxShadow(
      blurRadius: 2,
      spreadRadius: 0,
      offset: const Offset(0, 1),
      color: const Color(0xFF101828).withOpacity(0.06),
    ),
  ];
  static List<BoxShadow> ticketShadow = [
    BoxShadow(
      blurRadius: 64,
      spreadRadius: -12,
      offset: const Offset(0, 32),
      color: const Color(0xFF101828).withOpacity(0.20),
    ),
  ];
}
