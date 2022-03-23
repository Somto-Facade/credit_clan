import 'package:flutter/material.dart';
class DollarText extends StatelessWidget {
  final String text;
  TextStyle? style;
  DollarText({Key? key,
  required this.text,
  this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$$text',
      style: style,
    );
  }
}
