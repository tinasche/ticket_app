import 'dart:math';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_data.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/ticket_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_positioned_circle.dart';

class TicketsScreen extends StatefulWidget {
  const TicketsScreen({super.key});

  @override
  State<TicketsScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  late int ticketIndex = 0 ;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"] ?? 0;
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket Details"),
        backgroundColor: AppStyles.bgColor,
      ),
      backgroundColor: AppStyles.bgColor,
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            const AppTicketTabs(
              firstLabel: "Upcoming",
              secondLabel: "Previous",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                  isColoured: true,
                )),
            const SizedBox(
              height: 2,
            ),
            const TicketDetail(
              firstColHead: "Tinashe Chitakunye",
              firstColSub: "Passenger",
              secondColHead: "5477 9775",
              secondColSub: "Passport",
            ),
            const SizedBox(
              height: 2,
            ),
            const TicketDetail(
                firstColHead: "0055 444 77147",
                firstColSub: "Number of E-ticket",
                secondColHead: "B2SG28",
                secondColSub: "Booking Code"),
            const SizedBox(
              height: 2,
            ),
            const TicketDetail(
                firstColHead: "VISA***2462",
                firstColSub: "Payment Method",
                secondColHead: "\$249.99",
                secondColSub: "Price"),
            // bottom of the ticket detail section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: AppStyles.ticketColour,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                        height: 70,
                        drawText: false,
                        color: AppStyles.mezanineColor,
                        data: "https://madner.tech",
                        barcode: Barcode.code128())),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket: ticketList[ticketIndex],
                )),
          ],
        ),
        const TicketPositionedCircle(
          isLeft: true,
        ),
        const TicketPositionedCircle(
          isLeft: false,
        )
      ]),
    );
  }
}
