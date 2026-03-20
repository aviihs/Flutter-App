import 'package:e_commerce/Widgets/Header.dart';
import 'package:flutter/material.dart';

class AppProfile extends StatefulWidget {
  const AppProfile({super.key});

  @override
  State<AppProfile> createState() => _AppProfileState();
}

class _AppProfileState extends State<AppProfile> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Header(showLogo: true),
            SizedBox(height: 60),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [Text("Profile Page",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),),],
            ),),
          ],
        ),
      ),
    );
  }
}
