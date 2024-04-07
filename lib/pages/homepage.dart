import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import '../components/animalTile.dart';
import '../model/animal_info.dart';
import '../model/constant.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  category c = category();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      //searchBar,
      body: Column(
        children: [
          Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("Animals"),
              )),
          // Showing the categories of animals to adopt
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 12, right: 12, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: c.decorate(),
                  height: 60,
                  width: 60,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Cats",
                        style: c.textStyle(),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Text(
                      "Dogs",
                      style: c.textStyle(),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Text(
                      "Birds",
                      style: c.textStyle(),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //creating the tiles to show the animals
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 25, right: 15.0),
                child: Container(
                  // height: 150,
                  width: 280,
                  decoration: BoxDecoration(
                    color: hostory[index].color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: 15.0, // Offset from top by 50.0 pixels
                      left: 50.0, // Offset from left by 20.0 pixels
                      child: Image.asset(
                        hostory[index].image,
                        width: 250.0, // Set the desired image width
                        height: 250.0, // Set the desired image height
                      ),
                    ),
                  ]),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
