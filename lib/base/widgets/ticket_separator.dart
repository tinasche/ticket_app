import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';

class TicketSeparator extends StatelessWidget {
  const TicketSeparator({super.key, this.isColoured});
  final bool? isColoured;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BigCircleDot(
          isRight: true,
          isColoured: isColoured,
        ),
        Expanded(
            child: AppLayoutBuilderWidget(
              randomDivider: 20,
              width: 10,
              isColoured: isColoured,
            )),
        BigCircleDot(
          isRight: false,
          isColoured: isColoured,
        )
      ],
    );
  }
}
