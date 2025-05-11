import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      Navigator.pushNamed(context, '/second');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/third'); // Navigasi ke halaman ketiga
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: Theme.of(context).textTheme.titleLarge, // pengganti headline6
        ),
      ),
      body: Center(
        child: Text(
          'Halaman Utama',
          style: Theme.of(context).textTheme.bodyLarge, // pengganti bodyText1
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Second Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pageview),
            label: 'Third Page',
          ),
        ],
      ),
    );
  }
}
