import 'package:flutter/material.dart';

// import 'package:hive_example/pages/search.dart';
import 'components/bottom_navigation_bar.dart';
import 'pages/history.dart';
import 'pages/homepage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  navigateBottomBar(int index) {}
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //this _selectedindex is to control the bottomNavigationBar

    //function to change according to NavBar selection
    navigateBottomBar(int index) {
      setState(() {
        _selectedIndex = (index);
      });
    }

    //List of Pages to display
    List<Widget> _pages = [
      //HomePage
      const Homepage(),

      //History Page
      const History(),
    ];

    pages(int index) {
      // print(_selectedIndex);
      return _pages[index];
    }

    return Scaffold(
      backgroundColor: Colors.grey[400],
      //function to call change of pages according to index return by buttons
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/search');
                    // Navigator.push(Builder(builder: context)=> const Search());
                  },
                  icon: const Icon(Icons.search),
                ),
                const SizedBox(width: 12),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sunny),
                ),
              ],
            ),
          ),
        ],
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //Logo for Drawer
                const DrawerHeader(
                  child: Icon(
                    Icons.adobe,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    color: Colors.grey[900],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pets');
                    },
                    leading: const Icon(
                      Icons.pets,
                      color: Colors.white,
                    ),
                    title: const Text(
                      "Pets",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 20),
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      body: pages(_selectedIndex),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),

        //navigateBottomBar() is user defined function
      ),
    );
  }
}
