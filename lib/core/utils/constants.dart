import 'package:flutter/material.dart';


const Color kPurpleLight = Color(0xff9C59FE);
const Color kPurpleDark = Color(0xff6F53FD);
const Color kPurple = Color(0xffB169FA);

const Color kGreenLight = Color(0xffA6F208);
const Color kGreenDark = Color(0xff67EB00);

const Gradient linGradientPurple = LinearGradient(
    colors: [
      kPurpleLight,
      kPurpleDark,
    ],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter
);

const Gradient linGradientGreen = LinearGradient(
  colors: [
      kGreenLight,
      kGreenDark,
    ],
  begin: AlignmentDirectional.bottomStart,
  end: AlignmentDirectional.topEnd,
  stops: [0, .4],

);

const Gradient radGradient = RadialGradient(
    colors: [
      kPurpleLight,
      kPurpleDark,
    ],
    center: AlignmentDirectional.center,
    focalRadius: 2,
    radius: .75
);

