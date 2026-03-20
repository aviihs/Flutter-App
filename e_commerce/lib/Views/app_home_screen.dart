import 'package:e_commerce/Models/category_models.dart';
import 'package:e_commerce/Models/model.dart';
// import 'package:e_commerce/Models/model.dart';
import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Views/items_details_screen.dart';
import 'package:e_commerce/Widgets/banner.dart';
import 'package:e_commerce/Widgets/curater_items.dart';
import 'package:e_commerce/Widgets/header.dart';
import 'package:flutter/material.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Header(showLogo: true),
            const SizedBox(height: 20),
            MyBanner(),

            // const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shop By Category",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.black45,
                      letterSpacing: 0,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            // For Category
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  category.length,
                  (index) => InkWell(
                    onTap: () {
                      print("${category[index].name} clicked");
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: fbackgroundColor1,
                            backgroundImage: AssetImage(category[index].image),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(category[index].name),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Curated For You",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.black45,
                      letterSpacing: 0,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(fashionEcommerceApp.length, (index) {
                  final eCommerceItems = fashionEcommerceApp[index];
                  return Padding(
                    padding: index == 0
                        ? const EdgeInsets.symmetric(horizontal: 20)
                        : const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ItemsDetailsScreen(eCommerceApp: eCommerceItems),),);
                      },
                      child: CuratedItems(
                        eCommerceItems: eCommerceItems,
                        size: size,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
