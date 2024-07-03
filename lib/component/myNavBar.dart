import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mynavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  Mynavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (value) => onTabChange!(value),
      mainAxisAlignment: MainAxisAlignment.center,
      gap: 16,
      color: Colors.grey[400],
      tabActiveBorder: Border.all(
        color: Colors.white,
      ),
      tabBackgroundColor: Colors.grey.shade400,
      activeColor: Colors.grey.shade700,
      tabBorderRadius: 36,
      tabs: [
        GButton(
          icon: FeatherIcons.home,
          text: 'About',
        ),
        GButton(
          icon: FeatherIcons.activity,
          text: 'Projects',
        ),
        GButton(
          icon: FeatherIcons.phone,
          text: 'Contact',
        ),
      ],
    );
  }
}
