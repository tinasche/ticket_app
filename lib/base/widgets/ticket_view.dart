import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_col_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/textstyle_fourth.dart';
import 'package:ticket_app/base/widgets/textstyle_third.dart';
import 'package:ticket_app/base/widgets/ticket_separator.dart';

class TicketView extends StatelessWidget {
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColoured});

  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColoured;

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
                  color: isColoured == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColour,
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
                          isColoured: isColoured),
                      Expanded(child: Container()),
                      BigDot(
                        isColoured: isColoured,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                              isColoured: isColoured,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColoured == null
                                      ? Colors.white
                                      : AppStyles.dotColor,
                                )),
                          )
                        ],
                      )),
                      BigDot(
                        isColoured: isColoured,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        title: ticket["to"]["code"],
                        isColoured: isColoured,
                      ),
                    ],
                  ),
                  //   show dept/dest with text
                  Row(
                    children: [
                      SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            title: ticket["from"]["name"],
                            isColoured: isColoured,
                          )),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        title: ticket["flying_time"],
                        isColoured: isColoured,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          title: ticket["to"]["name"],
                          isColoured: isColoured,
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
              color: isColoured == null
                  ? AppStyles.ticketRed
                  : AppStyles.ticketColour,
              child: TicketSeparator(
                isColoured: isColoured,
              ),
            ),
            // orange section of ticket
            Container(
              padding:  const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColoured == null ? AppStyles.ticketRed : AppStyles.ticketColour,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColoured == null ? 21 : 0),
                      bottomRight: Radius.circular(isColoured == null ? 21 : 0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColTextLayout(
                    topTitle: ticket["date"],
                    bottomTitle: "DATE",
                    isColoured: isColoured,
                  ),
                  AppColTextLayout(
                    topTitle: ticket["departure_time"],
                    bottomTitle: "Departure Time",
                    alignment: CrossAxisAlignment.center,
                    isColoured: isColoured,
                  ),
                  AppColTextLayout(
                    topTitle: ticket["number"].toString(),
                    bottomTitle: "Number",
                    alignment: CrossAxisAlignment.end,
                    isColoured: isColoured,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
