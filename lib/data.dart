
import 'package:flutter/material.dart';

List<Shoe> shoes = <Shoe>[
  Shoe(
      cod: 1,
      name: 'NIKE AIR',
      description: 'AIR JORDAN 1 MID SE GC',
      price: 80,
      colors: <Color>[Colors.amber, Colors.deepOrange, Colors.white],
      sizes: <String>['7', '7.5', '8', '9'],
      stars: 4,
      image: 'https://res.cloudinary.com/dmoqwfcku/image/upload/v1564700436/100175_707932_20190701165002.png'
  ),
  Shoe(
      cod: 2,
      name: 'NIKE AIR',
      description: 'AIR JORDAN 1 MID SE GC',
      price: 30,
      colors: <Color>[Colors.green, Colors.deepOrange, Colors.white],
      sizes: <String>['7', '7.5', '8', '9'],
      stars: 4,
      image: 'https://res.cloudinary.com/dmoqwfcku/image/upload/v1564700892/21562_674309_20190625155433.png'
  ),
  Shoe(
      cod: 3,
      name: 'NIKE AIR',
      description: 'AIR JORDAN 1 MID SE GC',
      price: 100,
      colors: <Color>[Colors.amber, Colors.deepOrange, Colors.white],
      sizes: <String>['7', '7.5', '8', '9'],
      stars: 4,
      image: 'https://res.cloudinary.com/dmoqwfcku/image/upload/v1564700436/100175_707932_20190701165002.png'
  ),
  Shoe(
      cod: 4,
      name: 'NIKE AIR',
      description: 'AIR JORDAN 1 MID SE GC',
      price: 80,
      colors: <Color>[Colors.green, Colors.deepOrange, Colors.white],
      sizes: <String>['7', '7.5', '8', '9'],
      stars: 4,
      image: 'https://res.cloudinary.com/dmoqwfcku/image/upload/v1564700892/21562_674309_20190625155433.png'
  ),
  Shoe(
      cod: 5,
      name: 'NIKE AIR',
      description: 'AIR JORDAN 1 MID SE GC',
      price: 80,
      colors: <Color>[Colors.amber, Colors.deepOrange, Colors.white],
      sizes: <String>['7', '7.5', '8', '9'],
      stars: 4,
      image: 'https://res.cloudinary.com/dmoqwfcku/image/upload/v1564700436/100175_707932_20190701165002.png'
  ),
];


class Shoe {
  int cod;
  String name;
  String description;
  double price;
  List<Color> colors = List<Color>();
  List<String> sizes = List();
  int stars;
  String image;

  Shoe({this.name, this.description, this.price, this.colors, this.sizes,
      this.stars, this.image, this.cod});
}