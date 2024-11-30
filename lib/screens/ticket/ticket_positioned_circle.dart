import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  const TicketPositionedCircle({super.key, required this.isLeft});

  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: isLeft ? 22 : null,
      right: isLeft ? null : 22,
      top: 239,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 3, color: AppStyles.textColor)),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyles.textColor,
        ),
      ),
    );
  }
}
