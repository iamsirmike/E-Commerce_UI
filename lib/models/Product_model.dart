import 'package:flutter/material.dart';

class ProductModel {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  bool isselected;
  ProductModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.isselected,
  });
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyDesc,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3D82AE),
    isselected: false,
  ),
  ProductModel(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 8,
    description: dummyDesc,
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),
    isselected: false,
  ),
  ProductModel(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 10,
    description: dummyDesc,
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
    isselected: false,
  ),
  ProductModel(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 11,
    description: dummyDesc,
    image: "assets/images/bag_4.png",
    color: Color(0xFFE6B398),
    isselected: false,
  ),
  ProductModel(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyDesc,
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
    isselected: false,
  ),
  ProductModel(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyDesc,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
    isselected: false,
  ),
];

String dummyDesc =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
