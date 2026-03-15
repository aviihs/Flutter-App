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
        backgroundColor: Colors.orange.shade600,
        title: const Text(
          'MyApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 168, 144, 136), const Color.fromARGB(255, 226, 201, 170),],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              // side: BorderSide(
              //   // color: Colors.blue, // Your desired border color
              //   // width: 2.0, 
              // ),
            ),
          
            // color: Colors.red[300],
            shadowColor: const Color.fromARGB(255, 0, 94, 255).withAlpha(50),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text(
                    "Hello there, This is first page",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Image(image: AssetImage("assets/banner1.jpg")),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                        ),
                        child: Text("Like", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),)
                        ),
                      ElevatedButton(
                        onPressed: () {}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                        ),
                        child: Text("Dislike", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),)
                        ),
                        ElevatedButton(
                        onPressed: () {}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                        ),
                        child: Text("Subscribe", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),)
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
