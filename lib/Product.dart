import 'package:flutter/material.dart';
class Product{
  final String image,title;
  final int price,size,id;
  final Color color;
   int quantity,t;
  Product({
    this.id=0,
    this.image="",
    this.title="",
    this.price=0,
    this.size=0,
    this.color=const Color(0xFFFFFFFF),
    this.quantity=0,
    this.t=0,

});
}
List<Product> products = [
  Product(
    id:1,
    title:"Bag 1",
    price: 580,
    size:50,
    color: Color(0xFFFFFFFF),
    image: "assets/bag1.jpeg",
    quantity: 0,
    t: 0,

),
     Product(
id:2,
title:"Bag 2",
price: 450,
size:50,
color: Color(0xFFFFFFFF),
image: "assets/bag2.jpeg",
       quantity: 0,
       t: 0,
),
  Product(
    id:3,
    title:"Bag 3",
    price: 450,
    size:50,
    color: Color(0xFFFFFFFF),
    image: "assets/bag3.jpeg",
    quantity: 0, t: 0,
  ),
  Product(
    id:4,
    title:"Bag 4",
    price: 450,
    size:50,
    color: Color(0xFFFFFFFF),
    image: "assets/bag4.jpeg",
    quantity: 0, t: 0,
  ),
  Product(
    id:5,
    title:"Bag 2",
    price: 450,
    size:50,
    color: Color(0xFFFFFFFF),
    image: "assets/bag5.jpeg",
    quantity: 0, t: 0,
  ),
  Product(
    id:6,
    title:"Bag 6",
    price: 450,
    size:50,
    color: Color(0xFFFFFFFF),
    image: "assets/bag6.jpeg",
    quantity: 0, t: 0,
  )
];
    

