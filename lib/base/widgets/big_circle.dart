import 'package:flutter/material.dart';

class BigCircleDot extends StatelessWidget {
  const BigCircleDot({super.key, required this.isRight});
  final bool isRight;
  final double _curve = 10;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: isRight == true ? BorderRadius.only(
                  topRight: Radius.circular(_curve),
                  bottomRight: Radius.circular(_curve))
          : BorderRadius.only(
                  topLeft: Radius.circular(_curve),
                  bottomLeft: Radius.circular(_curve)))),
    );
  }
}
