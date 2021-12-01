import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'main_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MainTab(),
    Scaffold(),
    MainTab(),
    Scaffold(),
    MainTab(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              title: Container(),
              icon: Icon(Icons.home, size:32),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.search, size:32),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.movie_creation_outlined, size:32),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.shopping_basket_outlined, size:32),
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.person_outlined, size:32),
          ),
        ],

      ),
      body: _children[_currentIndex],
    );
  }
}






