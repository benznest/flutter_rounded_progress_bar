

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
  final double borderWidth;
  final double widthShadow;

  RoundedProgressBarStyle(
      {this.backgroundProgress = backgroundProgressDefault,
      this.colorProgress = colorProgressDefault,
      this.colorProgressDark = colorProgressDarkDefault,
      this.colorBorder = colorBorderDefault,
      this.widthShadow = 6,
      this.borderWidth = 6});
}

class RoundedProgressBar extends StatefulWidget {
  final double percent;
  final double height;
  final RoundedProgressBarStyle style;
  final RoundedProgressBarTheme theme;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry paddingChildLeft;
  final EdgeInsetsGeometry paddingChildRight;
  final Widget childCenter;
  final Widget childLeft;
  final Widget childRight;
  final bool reverse;
  final int milliseconds;
  final BorderRadiusGeometry borderRadius;

  RoundedProgressBar(
      {this.percent = 40,
      this.height = 50,
      this.style,
      this.theme,
      this.margin,
      this.reverse = false,
      this.childCenter,
      this.childLeft,
      this.childRight,
      this.milliseconds = 500,
      this.borderRadius,
      this.paddingChildLeft,
      this.paddingChildRight}) {
    assert(percent >= 0);
    assert(height > 0);
  }

  @override
  State<StatefulWidget> createState() => RoundedProgressBarState();
}

class RoundedProgressBarState extends State<RoundedProgressBar> {
  double width;
  double maxWidth;
  double widthProgress;
  RoundedProgressBarStyle style;
  Widget childCenter;
  AlignmentGeometry alignment = AlignmentDirectional.centerStart;
  BorderRadiusGeometry borderRadius;
  EdgeInsetsGeometry paddingChildLeft;
  EdgeInsetsGeometry paddingChildRight;

  @override
  void initState() {
    if (widget.style == null) {
      style = RoundedProgressBarStyle();
    } else {
      style = widget.style;
    }

    if (widget.theme != null) {
      if (widget.theme == RoundedProgressBarTheme.blue) {
        style = RoundedProgressBarStyle(
            backgroundProgress: backgroundProgressDefault,
            colorProgress: colorProgressBlue,
            colorProgressDark: colorProgressBlueDark,
            colorBorder: colorBorderDefault);
      } else if (widget.theme == RoundedProgressBarTheme.red) {
        style = RoundedProgressBarStyle(
            backgroundProgress: backgroundProgressDefault,
            colorProgress: colorProgressRed,
            colorProgressDark: colorProgressRedDark,
            colorBorder: colorBorderDefault);
      } else if (widget.theme == RoundedProgressBarTheme.green) {
        style = RoundedProgressBarStyle(
            backgroundProgress: backgroundProgressDefault,
            colorProgress: colorProgressGreen,
            colorProgressDark: colorProgressGreenDark,
            colorBorder: colorBorderDefault);
      } else if (widget.theme == RoundedProgressBarTheme.purple) {
        style = RoundedProgressBarStyle(
            backgroundProgress: backgroundProgressDefault,
            colorProgress: colorProgressPurple,
            colorProgressDark: colorProgressPurpleDark,
            colorBorder: colorBorderDefault);
      } else if (widget.theme == RoundedProgressBarTheme.yellow) {
        style = RoundedProgressBarStyle(
            backgroundProgress: backgroundProgressDefault,
            colorProgress: colorProgressYellow,
            colorProgressDark: colorProgressYellowDark,
            colorBorder: colorBorderDefault);
      } else if (widget.theme == RoundedProgressBarTheme.midnight) {
        style = RoundedProgressBarStyle(
            backgroundProgress: backgroundProgressDefault,
            colorProgress: colorProgressMidnight,
            colorProgressDark: colorProgressMidnightDark,
            colorBorder: colorBorderDefault);
      }
    }

    if (widget.reverse) {
      alignment = AlignmentDirectional.centerEnd;
    }

    if (widget.borderRadius == null) {
      borderRadius = BorderRadius.circular(12);
    } else {
      borderRadius = widget.borderRadius;
    }

    if (widget.paddingChildLeft == null) {
      paddingChildLeft = EdgeInsets.all(16);
    } else {
      paddingChildLeft = widget.paddingChildLeft;
    }

    if (widget.paddingChildRight == null) {
      paddingChildRight = EdgeInsets.all(16);
    } else {
      paddingChildRight = widget.paddingChildRight;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    widthProgress = width * widget.percent / 100;

    return Container(
        margin: widget.margin,
        decoration:
            BoxDecoration(borderRadius: borderRadius, color: style.colorBorder),
        padding: EdgeInsets.all(style.borderWidth),
        child: Column(children: <Widget>[
          Container(
              constraints: BoxConstraints.expand(height: widget.height),
              decoration: BoxDecoration(
                  borderRadius: borderRadius, color: style.backgroundProgress),
              child: Stack(alignment: alignment, children: <Widget>[
                AnimatedContainer(
                    duration: Duration(milliseconds: widget.milliseconds),
//                  padding: EdgeInsets.all(12),
                    width: widthProgress + style.widthShadow,
                    decoration: BoxDecoration(
                        borderRadius: borderRadius,
                        color: style.colorProgressDark)),
                AnimatedContainer(
                  duration: Duration(milliseconds: widget.milliseconds),
                  width: widthProgress,
                  decoration: BoxDecoration(
                      borderRadius: borderRadius, color: style.colorProgress),
                ),
                Center(child: widget.childCenter),
                Padding(
                  padding: paddingChildLeft,
                  child: Align(
                      alignment: Alignment.centerLeft, child: widget.childLeft),
                ),
                Padding(
                  padding: paddingChildRight,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: widget.childRight),
                )
              ]))
        ]));
  }
}
