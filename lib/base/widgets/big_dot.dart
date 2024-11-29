import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColoured});

  final bool? isColoured;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: isColoured == null
              ? Border.all(width: 2.5, color: Colors.white)
              : Border.all(width: 2.5, color: AppStyles.dotColor),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
