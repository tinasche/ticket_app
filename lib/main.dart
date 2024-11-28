import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_navbar.dart';
import 'package:ticket_app/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,  routes: {
          "/": (context) => const BottomNavbar(),
          "/all_tickets": (context) => const AllTickets()
    },);
  }
}
