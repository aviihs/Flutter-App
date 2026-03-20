import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class CustomBottomNav extends StatelessWidget {
  final NotchBottomBarController controller;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: controller,
      color: Colors.white,
      notchColor: Colors.black,
      showLabel: true,
      kIconSize: 24.0,
      kBottomRadius: 28.0,

      onTap: onTap,

      bottomBarItems: const [
        BottomBarItem(
          inActiveItem: Icon(Icons.home_filled, color: Colors.black),
          activeItem: Icon(Icons.home_filled, color: Colors.white),
          itemLabel: 'Home',
        ),
        BottomBarItem(
          inActiveItem: Icon(Icons.search, color: Colors.black),
          activeItem: Icon(Icons.search, color: Colors.white),
          itemLabel: 'Search',
        ),
        BottomBarItem(
          inActiveItem: Icon(Icons.notifications, color: Colors.black),
          activeItem: Icon(Icons.notifications, color: Colors.white),
          itemLabel: 'Notify',
        ),
        BottomBarItem(
          inActiveItem: Icon(Icons.person, color: Colors.black),
          activeItem: Icon(Icons.person, color: Colors.white),
          itemLabel: 'Profile',
        ),
      ],
    );
  }
}