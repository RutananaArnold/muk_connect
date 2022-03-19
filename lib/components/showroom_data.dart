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
var price = [
  'UGX 10,000',
  'UGX 20,000',
  'UGX 15,000',
  'UGX 5,000',
  'UGX 12,000',
  'UGX 25,000',
  'UGX 30,000',
];
var contact = [
  '+256778653548',
  '+256774546355',
  '+256775647445',
  '+256778657544',
  '+256778654533',
  '+256778345532',
  '+256778656353',
];

class Blogs {
  String title, tel;
  String imageUrl, cost;

  Blogs({
    @required this.title,
    @required this.imageUrl,
    @required this.tel,
    @required this.cost,
  });
}

List<Blogs> myBlogs = [
  Blogs(
    title: "Desire Bridget",
    imageUrl:
        'assets/images/item4.jpg',
    tel: '+256778653548',
    cost: 'UGX 10,000',
  ),
  Blogs(
    title: 'Timothy Abaine',
    imageUrl:
        'assets/images/item7.jpg',
    tel: '+256774546355',
    cost: 'UGX 20,000',
  ),
  Blogs(
    title: 'Muhwezi Ivan',
    imageUrl:
        'assets/images/item5.jpg',
    tel: '+256775647445',
    cost: 'UGX 15,000',
  ),
  Blogs(
    title: 'Kihembo Bill',
    imageUrl:
        'assets/images/item6.jpg',
    tel: '+256778657544',
    cost: 'UGX 5,000',
  ),
  Blogs(
    title: 'Wilberforce #...',
    imageUrl:
        'assets/images/item2.jpg',
    tel: '+256778654533',
    cost: 'UGX 12,000',
  ),
  Blogs(
    title: 'Angella Nakato',
    imageUrl:
        'assets/images/item8.jpg',
    tel: '+256778345532',
    cost: 'UGX 25,000',
  ),
  Blogs(
    title: 'Nyakanzi Cathy',
    imageUrl:
        'assets/images/item9.jpg',
    tel: '+256778656353',
    cost: 'UGX 30,000',
  ),
];
