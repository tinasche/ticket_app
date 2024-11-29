import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird(
      {super.key,
      required this.title,
      this.side = TextAlign.start,
      this.isColoured});

  final String title;
  final bool? isColoured;
  final TextAlign side;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: side,
      title,
      style: isColoured == null
          ? AppStyles.headline3.copyWith(color: Colors.white)
          : AppStyles.headline3,
    );
  }
}
