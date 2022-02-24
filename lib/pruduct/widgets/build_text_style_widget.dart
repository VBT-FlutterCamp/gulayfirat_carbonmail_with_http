import 'package:flutter/material.dart';

class BuildTextStyleWidget extends StatelessWidget {
  const BuildTextStyleWidget({
    Key? key,
    String? text,
    double? fontSize,
    TextAlign? textAlign,
    Color? color,
    FontWeight? fontWeight,
    int? maxLines,
  })  : text = text,
        fontSize = fontSize,
        color = color,
        fontWeight = fontWeight,
        maxLines = maxLines,
        textAlign = textAlign,
        super(key: key);
  final String? text;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(text ?? "",
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
