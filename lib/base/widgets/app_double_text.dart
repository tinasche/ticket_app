import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

// reusable widget
class AppDoubleText extends StatelessWidget {
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText, required this.nextTarget});

  final String bigText;
  final String smallText;
  final VoidCallback nextTarget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headline2,
        ),
        InkWell(
          onTap: nextTarget,
          child: Text(
            smallText,
            style: AppStyles.headline3.copyWith(color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}
