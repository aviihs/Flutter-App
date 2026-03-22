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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: fbackgroundColor2,
        title: Text("Details Product"),
        actions: [Header(showLogo: false)],
      ),
      body: ListView(
        children: [
          Container(
            color: fbackgroundColor2,
            width: size.width,
            height: size.height * 0.46,
            child: PageView.builder(
              onPageChanged: (value) {},
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      widget.eCommerceApp.image,
                      height: size.height * 0.4,
                      width: size.width * 0.85,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => AnimatedContainer(
                          duration: Duration(microseconds: 300),
                          margin: EdgeInsets.only(right: 8),
                          width: 7,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == currentIndex ? Colors.blue : Colors.grey.shade400
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
