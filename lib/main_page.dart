import 'package:e_literasi/pages/arsip_page.dart';
import 'package:e_literasi/pages/home_page.dart';
import 'package:e_literasi/pages/edit_profil_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    HomePage(),
    ArsipPage(),
    EditProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        selectedItemColor: Colors.blue.shade400,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items:[
          BottomNavigationBarItem(
          icon: Icon(_selectedIndex ==0 ? Icons.home : Icons.home_outlined),
          label: 'Home',
          ),
          BottomNavigationBarItem(
          icon: Icon(_selectedIndex ==0 ? Icons.library_books :Icons.library_books_outlined),
          label: 'Arsip',
          ),
          BottomNavigationBarItem(
          icon: Icon(_selectedIndex ==0 ? Icons.person :Icons.person_outline),
          label: 'Profil',
          ),
          ],
        ),
    );
  }
}