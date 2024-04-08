import 'package:flutter/material.dart';
import 'package:hive_example/pages/pets.dart';
import 'package:hive_example/pages/search.dart';
import 'package:hive_example/splash.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(),
      title: "Petadopt",
      debugShowCheckedModeBanner: false,
      // home: Home(),
      routes: {
        '/': (context) => const Splash(),
        '/search': (context) => const Search(),
        '/pets': (context) => const Pets(),
      },
    );
  }
}
