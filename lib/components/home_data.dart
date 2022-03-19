import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

var blogname = [
  'Rutanana Arnold',
  'Timothy Abaine',
  'Muhwezi Ivan',
  'Kihembo Bill',
  'Wilberforce #...',
  'Angella Nakato',
  'Nyakanzi Cathy',
];

class Blogs {
  String title;
  String imageUrl;

  Blogs({
    @required this.title,
    @required this.imageUrl,
  });
}

List<Blogs> myBlogs = [
  Blogs(
    title: "Rutanana Arnold",
    imageUrl: 'assets/images/item3.jpg',
  ),
  Blogs(
    title: 'Timothy Abaine',
    imageUrl: 'assets/images/fun2.jpg',
  ),
  Blogs(
    title: 'Muhwezi Ivan',
    imageUrl: 'assets/images/item9.jpg',
  ),
  Blogs(
    title: 'Kihembo Bill',
    imageUrl: 'assets/images/item8.jpg',
  ),
  Blogs(
    title: 'Wilberforce #...',
    imageUrl: 'assets/images/item6.jpg',
  ),
  Blogs(
    title: 'Angella Nakato',
    imageUrl: 'assets/images/item5.jpg',
  ),
  Blogs(
    title: 'Nyakanzi Cathy',
    imageUrl: 'assets/images/item7.jpg',
  ),
];
