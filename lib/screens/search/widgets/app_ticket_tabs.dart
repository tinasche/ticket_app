import 'package:flutter/material.dart';
import 'package:ticket_app/screens/search/widgets/app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstLabel;
  final String secondLabel;
  const AppTicketTabs({super.key, required this.firstLabel, required this.secondLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xfff4f6fd),
      ),
      child: Row(
        children: [
          AppTabs(
            tabText: firstLabel,
            tabBorder: false,
          ),
          AppTabs(
            tabText: secondLabel,
            tabBorder: true,
          )
        ],
      ),
    );
  }
}
