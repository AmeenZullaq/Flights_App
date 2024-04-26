import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaddingSymetric extends StatelessWidget {
  const PaddingSymetric({
    super.key,
    this.horizontal = 0.0,
    this.vertical = 0.0,
    this.child,
  });
  final double horizontal;
  final double vertical;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal.w,
        vertical: vertical.h,
      ),
      child: child,
    );
  }
}

class PaddingAll extends StatelessWidget {
  const PaddingAll({
    super.key,
    required this.value,
    this.child,
  });
  final double value;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(value.w),
      child: child,
    );
  }
}

class PaddingDynamic extends StatelessWidget {
  const PaddingDynamic({
    super.key,
    this.top = 0.0,
    this.bottom = 0.0,
    this.left = 0.0,
    this.right = 0.0,
    this.child,
  });
  final double top;
  final double bottom;
  final double left;
  final double right;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top.h,
        bottom: bottom.h,
        left: left.w,
        right: right.w,
      ),
      child: child,
    );
  }
}

class StartPadding extends StatelessWidget {
  final Widget? child;
  final double start;
  const StartPadding({
    Key? key,
    this.child,
    required this.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: start.w),
      child: child,
    );
  }
}

class EndPadding extends StatelessWidget {
  final Widget? child;
  final double end;
  const EndPadding({
    Key? key,
    this.child,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: end.w),
      child: child,
    );
  }
}

class TopPadding extends StatelessWidget {
  final Widget? child;
  final double top;
  const TopPadding({
    Key? key,
    this.child,
    required this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: top.h),
      child: child,
    );
  }
}

class BottomPadding extends StatelessWidget {
  final Widget? child;
  final double bottom;
  const BottomPadding({
    Key? key,
    this.child,
    required this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: bottom.h),
      child: child,
    );
  }
}
