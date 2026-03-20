import 'package:flutter/material.dart';

class AppModel {
  final String name, image, description, category;
  final double rating;
  final int review, price;
  List<Color> fcolor;
  List<String> size;
  bool isCheck;

  AppModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.price,
    required this.review,
    required this.fcolor,
    required this.size,
    required this.description,
    required this.isCheck,
    required this.category,
  });
}

List<AppModel> fashionEcommerceApp = [
  // id:1
  AppModel(
    name: "High Quality Earbuds",
    rating: 4.9,
    image: "assets/earbuds.jpeg",
    price: 2999,
    review: 136,
    isCheck: true,
    category: "Electronic",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),

  // id:2
  AppModel(
    name: "High Quality Watch",
    rating: 4.9,
    image: "assets/watch.jpg",
    price: 295,
    review: 136,
    isCheck: true,
    category: "Men",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),

  AppModel(
    name: "High Quality Bags",
    rating: 4.9,
    image: "assets/bags.jpg",
    price: 295,
    review: 136,
    isCheck: true,
    category: "Women",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),
  AppModel(
    name: "High Quality Shoes",
    rating: 4.9,
    image: "assets/shoes.png",
    price: 295,
    review: 136,
    isCheck: true,
    category: "Women",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),
  AppModel(
    name: "Oversized Fit Printed Mesh T-Shirt",
    rating: 4.9,
    image: "assets/earbuds.jpeg",
    price: 295,
    review: 136,
    isCheck: true,
    category: "Women",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),

  // id:2
  AppModel(
    name: "Oversized Fit Printed Mesh T-Shirt",
    rating: 4.9,
    image: "assets/watch.jpg",
    price: 295,
    review: 136,
    isCheck: true,
    category: "Women",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),

  AppModel(
    name: "Oversized Fit Printed Mesh T-Shirt",
    rating: 4.9,
    image: "assets/bags.jpg",
    price: 295,
    review: 136,
    isCheck: true,
    category: "Women",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),
  AppModel(
    name: "Oversized Fit Printed Mesh T-Shirt",
    rating: 4.9,
    image: "assets/shoes.png",
    price: 295,
    review: 136,
    isCheck: true,
    category: "Women",
    fcolor: [Colors.black, Colors.blue, Colors.blue[100]!],
    size: ["XS", "S", "M"],
    description: "",
  ),
];

const myDescription1 = "Lorem Ipsum is simply dummy text of the printing ";
const myDescription2 =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
