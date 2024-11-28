import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_data.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

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
                .map((ticket) => Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TicketView(ticket: ticket, wholeScreen: true,)))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
