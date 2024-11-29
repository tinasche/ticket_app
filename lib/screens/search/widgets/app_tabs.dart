import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;

  const AppTabs({super.key, this.tabText = "", required this.tabBorder});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
          color: (tabBorder == false) ? Colors.white : Colors.transparent,
          borderRadius: (tabBorder == false)
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}
