import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  const TextStyleFourth(
      {super.key,
      required this.title,
      this.side = TextAlign.start,
      this.isColoured});

  final String title;
  final TextAlign side;
  final bool? isColoured;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: side,
      title,
      overflow: TextOverflow.ellipsis,
      style: isColoured == null
          ? AppStyles.headline4.copyWith(color: Colors.white)
          : AppStyles.headline4,
    );
  }
}
