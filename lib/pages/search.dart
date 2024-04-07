import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchageState();
}

class _SearchageState extends State<Search> {
  List names = [
    ["Alice", "Bob", "Charlie", "Varun"],
    [
      "image/dog_logo1.png",
      "image/cat1.png",
      "image/cat2.png",
      "image/cat2.png"
    ],
  ];

  //creating a var to store the search query
  String searchQuery = "";

  //create a empty list to store the filtered list
  List filteredNames = [];

  //method to initState
  @override
  void initState() {
    super.initState();
    filteredNames = names;
  }

  void searchName(String query) {
    //this list consist more than one sub list
    filteredNames = names[0]
        .where((name) => name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search ",
              ),
              onChanged: (text) => searchName(text),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: names[0].length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber,
                    ),
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(names[1][index]),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              names[0][index],
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
