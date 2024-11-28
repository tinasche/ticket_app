import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/home_screen.dart';
import 'package:ticket_app/screens/profile_screen.dart';
import 'package:ticket_app/screens/search_screen.dart';
import 'package:ticket_app/screens/tickets_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketsScreen(),
    const ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens.elementAt(_selectedIndex),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          selectedItemColor: AppStyles.ticketRed,
          onTap: _onItemTapped,
          items: [
            SalomonBottomBarItem(
                icon: const Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: const Icon(FluentSystemIcons.ic_fluent_home_filled),
                title: const Text("Home")),
            SalomonBottomBarItem(
                icon: const Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: const Icon(FluentSystemIcons.ic_fluent_search_filled),
                title: const Text("Search")),
            SalomonBottomBarItem(
                icon: const Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: const Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                title: const Text("Tickets")),
            SalomonBottomBarItem(
              icon: const Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon:
                  const Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              title: const Text("Profile"),
            )
          ]),
    );
    // bottomNavigationBar: BottomNavigationBar(
    //   selectedLabelStyle: const TextStyle(overflow: TextOverflow.fade),
    //   currentIndex: _selectedIndex,
    //   onTap: _onItemTapped,
    //   items: const [
    //     BottomNavigationBarItem(
    //         icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
    //         activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
    //         label: "Home"),
    //     BottomNavigationBarItem(
    //         icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
    //         activeIcon:
    //             Icon(FluentSystemIcons.ic_fluent_search_filled),
    //         label: "Search"),
    //     BottomNavigationBarItem(
    //         icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
    //         activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
    //         label: "Tickets"),
    //     BottomNavigationBarItem(
    //         icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
    //         activeIcon:
    //             Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
    //         label: "Profile"),
    //   ],
    //   selectedItemColor: Colors.blueGrey,
    //   unselectedItemColor: const Color(0xff526400),
    //   showSelectedLabels: true,
    // ));
  }
}
