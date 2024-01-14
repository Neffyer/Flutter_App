import 'package:flutter/material.dart';
import 'package:proyecto_flutter/screen/search_screen.dart';
import 'package:proyecto_flutter/screen/library_screen.dart';
import 'package:proyecto_flutter/screen/list_screen.dart';

class ScreenBase extends StatefulWidget {
  const ScreenBase({super.key});

  @override
  ScreenBaseState createState() => ScreenBaseState();
}

class ScreenBaseState extends State<ScreenBase> {
  int _selectedIndex = 0;

  // List of screens
  final List<Widget> _screens = [
    const ListScreen(),
    const SearchScreen(),
    const Library_Screen(),
  ];

  final Map<int, String> upBarName = {
    0: "Home",
    1: "Search",
    2: "My films",
  };

  // Método para cambiar de pantalla
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          upBarName[_selectedIndex]!,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_rows_rounded),
            label: 'My films',
          ),
        ],
        iconSize: 28,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(100, 255, 255, 255),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
