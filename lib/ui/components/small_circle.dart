import 'package:flutter/material.dart';

class SmallCircle extends StatefulWidget {
  final double diameter;
  final Color color;
  Widget? child;
  SmallCircle({Key? key,
  required this.diameter,
    this.child,
    required this.color
  }) : super(key: key);

  @override
  _SmallCircleState createState() => _SmallCircleState();
}

class _SmallCircleState extends State<SmallCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: widget.diameter,
      width: widget.diameter,
      decoration: BoxDecoration(
        color: widget.color,
        shape: BoxShape.circle
      ),
      child: widget.child,
    );
  }
}
