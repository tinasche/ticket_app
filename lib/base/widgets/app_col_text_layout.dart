import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/textstyle_fourth.dart';
import 'package:ticket_app/base/widgets/textstyle_third.dart';

class AppColTextLayout extends StatelessWidget {
  const AppColTextLayout({super.key, required this.topTitle, required this.bottomTitle, this.alignment = CrossAxisAlignment.start});
  final String topTitle;
  final String bottomTitle;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(title: topTitle),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(title: bottomTitle)
      ],
    );
  }
}
