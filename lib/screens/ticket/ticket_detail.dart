import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_col_text_layout.dart';

class TicketDetail extends StatelessWidget {
  const TicketDetail({
    super.key,
    required this.firstColHead,
    required this.firstColSub,
    required this.secondColHead,
    required this.secondColSub,
  });

  final String firstColHead;
  final String firstColSub;
  final String secondColHead;
  final String secondColSub;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      color: AppStyles.ticketColour,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColTextLayout(
                topTitle: firstColHead,
                bottomTitle: firstColSub,
                isColoured: true,
              ),
              AppColTextLayout(
                topTitle: secondColHead,
                bottomTitle: secondColSub,
                isColoured: true,
                alignment: CrossAxisAlignment.end,
              ),
            ],
          )
        ],
      ),
    );
  }
}
