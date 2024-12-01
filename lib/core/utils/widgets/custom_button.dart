import 'package:flutter/material.dart';

import '../constants.dart';
import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, this.height = 80, this.bgColor, this.gradient,
    required this.text, required this.onTap, this.style
  });

  final double height ;
  final Color? bgColor;
  final Gradient? gradient;
  final String text;
  final void Function() onTap;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    double width = height * 2; //height * 1.722222222222222;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: Colors.white
        ),
        child: Center(
          child: Stack(
            children: [
              Container(
                height: height - 10,
                width: width - 10,
                decoration:  BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  color: bgColor ?? const Color(0xff4EC307),

                ),
              ),
              Container(
                height: height - 20,
                width: width - 10,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  gradient: gradient ?? linGradientGreen,

                ),
                child: Center(
                  child: Text(
                    text,
                    style: style ?? Styles.ts24,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
