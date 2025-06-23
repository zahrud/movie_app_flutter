import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';

void main() => runApp(MovieApp());

class MovieApp extends StatefulWidget {
  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  int _currentIndex = 0;

  final _pages = [
    HomePage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Explorer',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(title: Text("Movie Explorer")),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          ],
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}
