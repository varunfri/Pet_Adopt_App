// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import "package:google_nav_bar/google_nav_bar.dart";

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: GNav(
        color: Colors.black,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (index) => onTabChange!(index),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.history,
            text: "History",
          ),
        ],
      ),
    );
  }
}
