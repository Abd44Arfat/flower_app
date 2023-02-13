import 'package:flutter/material.dart';

class Item {
  String imgPath;
  double price;
  String name;
  String location;

  Item({required this.imgPath, required this.name, required this.price, this.location="main barnch"});
}

List items = [
  Item(
      name: "product 1",
      imgPath: "assets/img/1.webp",
      price: 312.99,
      location: "main branch1"),
  Item(
      name: "product 2",
      imgPath: "assets/img/2.webp",
      price: 712.99,
      location: "main branch1"),
  Item(
      name: "product 3",
      imgPath: "assets/img/3.webp",
      price: 12.99,
      location: "main branch5"),
  Item(
      name: "product 4",
      imgPath: "assets/img/4.webp",
      price: 12.99,
      location: "flower shop"),
  Item(
      name: "product 5",
      imgPath: "assets/img/5.webp",
      price: 12.99,
      location: "main branch1"),
  Item(
      name: "product 6",
      imgPath: "assets/img/6.webp",
      price: 12.99,
      location: "main branch6"),
  Item(
      name: "product 7",
      imgPath: "assets/img/7.webp",
      price: 12.99,
      location: "main branch1"),
  Item(
      name: "product 8",
      imgPath: "assets/img/8.webp",
      price: 12.99,
      location: "main branch2"),
];
