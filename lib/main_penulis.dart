import 'package:e_literasi/pages/home_penulis_page.dart';
import 'package:e_literasi/pages/tulis_page.dart';
import 'package:e_literasi/pages/edit_profil_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPenulis extends StatefulWidget {
  const MainPenulis({super.key});

  @override
  State<MainPenulis> createState() => _MainPenulisState();
}

class _MainPenulisState extends State<MainPenulis> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePenulis(),
    TulisPage(),
    EditProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(72, 121, 177, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}