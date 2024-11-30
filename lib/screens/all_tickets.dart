import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_data.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  void tapped(int number) {
    print("Details for ticket number $number");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(children: [
        SingleChildScrollView(
          child: Column(
            children: ticketList
                .map((ticket) => GestureDetector(
              onTap: () {
                var index = ticketList.indexOf(ticket);
                Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {
                  "index": index
                });
              },
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: TicketView(ticket: ticket, wholeScreen: true,)),
                ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
