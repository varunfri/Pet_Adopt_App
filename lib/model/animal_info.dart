import 'package:flutter/material.dart';
import 'package:hive_example/model/constant.dart';
// import 'owner_model.dart';

class Animal {
  final Color color;
  final String name, location, sex, image, description;
  final double age, weight;
  final int distance;
  final bool fav;

  Animal({
    required this.fav,
    required this.image,
    required this.color,
    required this.description,
    required this.name,
    required this.location,
    required this.sex,
    required this.age,
    required this.weight,
    required this.distance,
  });
}

List<Animal> hostory = [
  Animal(
    fav: true,
    color: orange,
    name: 'Leo',
    description: desc,
    location: 'Kolar,JJ Road ',
    sex: 'Male',
    age: 2.4,
    weight: 4.5,
    image: 'image/cat_4.png',
    distance: 17,
  ),
  Animal(
    fav: false,
    color: green,
    name: 'Lily',
    description: desc,
    location: 'Siak, Riau',
    sex: 'Female',
    age: 1.2,
    image: 'image/cat_2.png',
    weight: 2.6,
    distance: 50,
  ),
  Animal(
    fav: true,
    color: blue,
    name: 'Cleo',
    image: 'image/cat_2.png',
    description: desc,
    location: 'Kolar, Riau',
    sex: 'Male',
    age: 1.1,
    weight: 3.4,
    distance: 7,
  ),
  Animal(
    fav: true,
    color: blue,
    image: 'image/cat_1.png',
    name: 'Ergo',
    description: desc,
    location: 'Kampar, Riau',
    sex: 'Female',
    age: 1.1,
    weight: 3.2,
    distance: 11,
  ),
  Animal(
    fav: true,
    color: blue,
    image: 'image/dog_1.png',
    name: 'Mike',
    description: desc,
    location: 'Kampar, Riau',
    sex: 'Female',
    age: 1.1,
    weight: 3.2,
    distance: 11,
  ),
  Animal(
    fav: true,
    color: blue,
    image: 'image/dog_2.png',
    name: 'joger',
    description: desc,
    location: 'Kampar, Riau',
    sex: 'Female',
    age: 1.4,
    weight: 3.2,
    distance: 11,
  ),
  Animal(
    fav: true,
    color: blue,
    image: 'image/dog_3.png',
    name: 'Milo',
    description: desc,
    location: 'Kampar, Riau',
    sex: 'Female',
    age: 1.9,
    weight: 3.2,
    distance: 11,
  ),
  Animal(
    fav: true,
    color: blue,
    image: 'image/parrot_3.png',
    name: 'Milo',
    description: desc,
    location: 'Kampar,',
    sex: 'Female',
    age: 1.1,
    weight: 3.2,
    distance: 11,
  ),
  Animal(
    fav: true,
    color: orange,
    image: 'image/Parrot_2.png',
    name: 'Jack',
    description: desc,
    location: 'Kampar, Riau',
    sex: 'Female',
    age: 0.9,
    weight: 3.2,
    distance: 21,
  ),
  Animal(
    fav: true,
    color: blue,
    image: 'image/parrot_1.png',
    name: 'Marko',
    description: desc,
    location: 'Kampar, Riau',
    sex: 'Female',
    age: 0.8,
    weight: 1.0,
    distance: 15,
  ),
];
String desc =
    //'This cat is a domestic species of small carnivorous mammal. It is the only domesticated species in the family Felidae and is often reffered to as the domestic cat to distinguish it from the wild members of the family. A cat can either be a house cat, a farm cat or a feral cat, the latter rangers freely and avoids human contacts. Domestic cats are valued by humans for companionship and their ability to kill redonts. About 60 cat breeds are recognized by various cat registries.'
    "Adopt a Forever Friend today! Life is better with a dog. Adopt. Don't let love go to waste.";
// 'Leo is a cat that i have found on the side of the road 1 year ago he is now a cheerful and active cat';

List<Animal> history = [
  Animal(
    fav: true,
    color: blue,
    image: 'image/cat_4.png',
    name: 'Milo',
    description: desc,
    location: 'Kampar, Riau',
    sex: 'Female',
    age: 1.1,
    weight: 3.2,
    distance: 11,
  ),
];
