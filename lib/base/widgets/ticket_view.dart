import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_col_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/textstyle_fourth.dart';
import 'package:ticket_app/base/widgets/textstyle_third.dart';
import 'package:ticket_app/base/widgets/ticket_separator.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.wholeScreen = false });
  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 190,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
        child: Column(
          children: [
            // blue section of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: AppStyles.ticketRadius,
                      topRight: AppStyles.ticketRadius)),
              child: Column(
                children: [
                  // show dept/dest with icons
                  Row(
                    children: [
                      TextStyleThird(
                        title: ticket["from"]["code"],
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(title: ticket["to"]["code"]),
                    ],
                  ),
                  //   show dept/dest with text
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            title: ticket["from"]["name"],
                          )),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        title: ticket["flying_time"],
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          title: ticket["to"]["name"],
                          side: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              color: AppStyles.ticketRed,
              child: const TicketSeparator(),
            ),
            // orange section of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketRed,
                  borderRadius: BorderRadius.only(
                      bottomLeft: AppStyles.ticketRadius,
                      bottomRight: AppStyles.ticketRadius)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColTextLayout(topTitle: ticket["date"], bottomTitle: "DATE",),
                  AppColTextLayout(topTitle: ticket["departure_time"], bottomTitle: "Departure Time",alignment: CrossAxisAlignment.center,),
                  AppColTextLayout(topTitle: ticket["number"].toString(), bottomTitle: "Number", alignment: CrossAxisAlignment.end,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
