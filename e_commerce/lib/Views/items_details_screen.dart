import 'package:e_commerce/Models/model.dart';
import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Widgets/Header.dart';
import 'package:flutter/material.dart';

class ItemsDetailsScreen extends StatefulWidget {
  final AppModel eCommerceApp;
  const ItemsDetailsScreen({super.key, required this.eCommerceApp});

  @override
  State<ItemsDetailsScreen> createState() => ItemsDetailsScreenState();
}

class ItemsDetailsScreenState extends State<ItemsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: fbackgroundColor2,
        title: Text("Details Product"),
        actions: [Header(showLogo: false),
        ],
      ),
    );
  }
}
