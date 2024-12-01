import 'package:connect2/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBackGroundWidget extends StatelessWidget {
  const CustomBackGroundWidget({super.key, required this.child, this.gradient});

  final Widget child;
  final Gradient? gradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradient ?? radGradient
      ),
      child: child,
    );
  }
}
