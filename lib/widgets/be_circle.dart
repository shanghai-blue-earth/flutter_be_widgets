import 'package:flutter/material.dart';

class BECircle extends StatelessWidget {
  final double? outsideCircleSize;
  final double outsideCircleWidth;
  final Color outsideCircleColor;
  final double? insideCircleSize;
  final double insideCircleWidth;
  final Color insideCircleColor;
  final Widget component;

  const BECircle({
    super.key,
    this.outsideCircleSize,
    required this.outsideCircleWidth,
    required this.outsideCircleColor,
    this.insideCircleSize,
    required this.insideCircleWidth,
    required this.insideCircleColor,
    required this.component,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: outsideCircleSize,
          height: outsideCircleSize,
          decoration: BoxDecoration(
            border: Border.all(
              color: outsideCircleColor,
              width: outsideCircleWidth,
            ),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: insideCircleSize,
          height: insideCircleSize,
          decoration: BoxDecoration(
            border: Border.all(
              color: insideCircleColor,
              width: insideCircleWidth,
            ),
            shape: BoxShape.circle,
          ),
        ),
        component
      ],
    );
  }
}
