import 'package:flutter/material.dart';
import 'package:flutter_health/screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Emptymainscreen(),
    );
  }
}

class Emptymainscreen extends StatefulWidget {
  @override
  _EmptymainscreenState createState() => _EmptymainscreenState();
}

class _EmptymainscreenState extends State<Emptymainscreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    Page2(),
    Page3(),
    Settingsscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue, // Background color of the navigation
            borderRadius: BorderRadius.circular(30.0) ,
              // topLeft: Radius.circular(20.0),
              // topRight: Radius.circular(20.0),

          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0, // Removes the shadow
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.6),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pageview),
                label: 'Page 2',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pages),
                label: 'Page 3',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 3'),
    );
  }
}

