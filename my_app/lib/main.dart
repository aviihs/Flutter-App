import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FirstApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Header(),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold vaneko euta canvas ho
      appBar: AppBar(
        // centerTitle: false,
        title: const Text(
          'MyApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.red,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: Colors.blue, // Your desired border color
                  width: 2.0, // Border thickness
                ),
              ),

              // color: Colors.red[300],
              shadowColor: const Color.fromARGB(255, 0, 94, 255).withAlpha(50),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text("Hello there, This is Home Tab!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// NormalWidgetStateless
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//  @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// body: const Center(child: Text("Welcome to home page!")),
