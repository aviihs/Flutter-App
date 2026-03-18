import 'package:flutter/material.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int selectedIndex = 0;
  final List page = [
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 30),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30),
            label: "Profile",
          ),
        ],
      ),
      body: page[selectedIndex],
    );
  }
}
