import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.showLogo});
  final bool showLogo;

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          if (showLogo)
            Image.asset("assets/images/logo.png", height: 50)
          else
            SizedBox(), 


                  // Image.asset("assets/images/logo.png", height: 50),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(Icons.shopping_bag, size: 30),
                      Positioned(
                        top: -5,
                        right: -5,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
            
  }
}