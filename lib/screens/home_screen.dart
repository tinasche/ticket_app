import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_data.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> {
  var hour = DateTime.now().hour;
  String _salutation = "";

  @override
  Widget build(BuildContext context) {
    if (hour < 12) {
      _salutation = "Good morning 👋🏾";
    } else if (hour < 16) {
      _salutation = "Good afternoon 👋🏾";
    } else {
      _salutation = "Good evening 👋🏾";
    }
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_salutation, style: AppStyles.headline3),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets", style: AppStyles.headline1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  smallText: "View All",
                  bigText: "Upcoming Flights",
                  nextTarget: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .take(3)
                          .map((ticket) => TicketView(
                                ticket: ticket,
                              ))
                          .toList(),
                    )),
                const SizedBox(
                  height: 20,
                ),
                AppDoubleText(
                  smallText: "View All",
                  bigText: "Hotels",
                  nextTarget: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                  children: hotelList.map((hotel) => Hotel(hotel: hotel)).toList()
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
