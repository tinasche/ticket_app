import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_data.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/ticket_detail.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headline1,
          ),
          const SizedBox(
            height: 40,
          ),
          const AppTicketTabs(
            firstLabel: "Upcoming",
            secondLabel: "Previous",
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
              padding: const EdgeInsets.only(left: 16),
              child: TicketView(
                ticket: ticketList[0],
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
            decoration: BoxDecoration(
            color: AppStyles.ticketColour,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                ),
            ),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Center(child: Text("Hello Flutter"),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
