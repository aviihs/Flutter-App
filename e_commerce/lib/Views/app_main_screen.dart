// import 'package:e_commerce/Views/app_home_screen.dart';
// import 'package:flutter/material.dart';

// class AppMainScreen extends StatefulWidget {
//   const AppMainScreen({super.key});

//   @override
//   State<AppMainScreen> createState() => _AppMainScreenState();
// }

// class _AppMainScreenState extends State<AppMainScreen> {
//   int selectedIndex = 0;
//   final List page = [
//     const AppHomeScreen(),
//     const Scaffold(),
//     const Scaffold(),
//     const Scaffold(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: BottomNavigationBar(
//         unselectedItemColor: Colors.black38,
//         selectedItemColor: Colors.black,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: selectedIndex,
//         onTap: (value) {
//           setState(() {
//             selectedIndex = value;
//           });

//         },
//         elevation: 0,
//         backgroundColor: Colors.white,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, size: 30),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search, size: 30),
//             label: "Search",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications, size: 30),
//             label: "Notifications",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline, size: 30),
//             label: "Profile",
//           ),
//         ],
//       ),
//       body: page[selectedIndex],
//     );
//   }
// }

import 'package:e_commerce/Views/app_home_screen.dart';
import 'package:e_commerce/Views/app_notification.dart';
import 'package:e_commerce/Views/app_profile.dart';
import 'package:e_commerce/Views/app_search_secreen.dart';
import 'package:e_commerce/Widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  final _controller = NotchBottomBarController(index: 0);

  final _pageController = PageController(initialPage: 0);

  final List<Widget> pages = [
    const AppHomeScreen(),
    const AppSearchSecreen(),
    const AppNotification(),
    const AppProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: PageView(controller: _pageController, children: pages),

      bottomNavigationBar: CustomBottomNav(
        controller: _controller,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
      ),
    
    );
  }
}
