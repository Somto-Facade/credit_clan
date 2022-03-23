import 'package:flutter/material.dart';

import '../../constants/colors/index.dart';

//ignore: must_be_immutable
class CustomContainer extends StatefulWidget {
  static BoxShadow shadow = BoxShadow(color: Colors.black.withOpacity(0.1), spreadRadius: 2, blurRadius: 30, offset: Offset(0, 5));

  CustomContainer(
      {Key? key,
        required this.width,
        this.height,
        required this.borderRadius,
        required this.child,
        this.color,
        this.padding,
        this.alignment,
        this.margin,
        this.image,
        this.boxShadow })
      : super(key: key);
  double width;
  double? height;
  Widget child;
  double borderRadius;
  Color? color;
  EdgeInsets? padding;
  EdgeInsets? margin;
  DecorationImage? image;
  List<BoxShadow>? boxShadow;
  AlignmentGeometry? alignment;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: widget.padding ?? const EdgeInsets.all(12),
      margin: widget.margin ?? const EdgeInsets.all(0),
      alignment: widget.alignment,
      decoration: BoxDecoration(
        image: widget.image,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        color: widget.color ?? AppColors.white,
        boxShadow: widget.boxShadow ??  [CustomContainer.shadow],
      ),
      child: widget.child,
    );
  }
}
