import 'package:flutter/material.dart';

const Color backgroundProgressDefault = Color(0xFFBBDEFB);
const Color colorProgressDefault = Color(0xFF42A5F5);
const Color colorProgressDarkDefault = Color(0xFF2980b9);
const Color colorBorderDefault = Color(0xFFEEEEEE);

const Color colorProgressBlue = Color(0xFF42A5F5);
const Color colorProgressBlueDark = Color(0xFF2980b9);

const Color colorProgressRed = Color(0xffe74c3c);
const Color colorProgressRedDark = Color(0xffc0392b);

const Color colorProgressGreen = Color(0xff2ecc71);
const Color colorProgressGreenDark = Color(0xff27ae60);

const Color colorProgressPurple = Color(0xff9b59b6);
const Color colorProgressPurpleDark = Color(0xff8e44ad);

const Color colorProgressYellow = Color(0xfff1c40f);
const Color colorProgressYellowDark = Color(0xfff39c12);

const Color colorProgressMidnight = Color(0xff34495e);
const Color colorProgressMidnightDark = Color(0xff2c3e50);

enum RoundedProgressBarTheme { blue, red, green, purple, yellow, midnight }

class RoundedProgressBarStyle {
  final Color backgroundProgress;
  final Color colorProgress;
  final Color colorProgressDark;
  final Color colorBorder;
  final Color colorBackgroundIcon;
  final double borderWidth;
  final double widthShadow;

  RoundedProgressBarStyle(
      {this.backgroundProgress = backgroundProgressDefault,
      this.colorProgress = colorProgressDefault,
      this.colorProgressDark = colorProgressDarkDefault,
      this.colorBorder = colorBorderDefault,
      this.colorBackgroundIcon = colorBorderDefault,
      this.widthShadow = 6,
      this.borderWidth = 6});
}
