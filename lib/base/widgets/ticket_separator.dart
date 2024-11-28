import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';

class TicketSeparator extends StatelessWidget {
  const TicketSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BigCircleDot(
          isRight: true,
        ),
        Expanded(
            child: AppLayoutBuilderWidget(
              randomDivider: 20,
              width: 10,
            )),
        BigCircleDot(
          isRight: false,
        )
      ],
    );
  }
}
