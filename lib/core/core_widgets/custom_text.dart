import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.fontSize,
      this.color,
      this.style,
      this.textAlign,
      this.overflow,
      this.maxLines,
      this.fontWeight});

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
