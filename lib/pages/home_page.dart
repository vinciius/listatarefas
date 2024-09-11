// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:listatarefas/pages/intro_page.dart';
import 'package:listatarefas/pages/notes_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Widget _getSelectedPage() {
    switch (_selectedIndex) {
      case 0:
        return NotesPage();
      case 1:
        return IntroPage();
      case 2:
        return Center(child: Text('Settings Page'));
      default:
        return NotesPage(); 
    }
  }

  // This method will handle bottom navigation tap.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Displays content based on selected bottom nav item
        child: _getSelectedPage(), 
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.deepOrange,
        shadowColor: Colors.deepOrange,
        color: Colors.yellow,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note,
                size: 22,
                color: Colors.orange,
                ),
              label: 'Notes',
              activeIcon: Icon(
                Icons.note_outlined,
                size: 22,
                color: Colors.orange,
                ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                size: 22, 
                color: Colors.orange,
                ),
              label: 'Favorites',
              activeIcon: Icon(
                Icons.star_border_outlined,
                size: 22,
                color: Colors.orange,
                ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 22,
                color: Colors.orange,
                ),
              label: 'Settings',
              activeIcon: Icon(
                Icons.settings_outlined,
                size: 22,
                color: Colors.orange,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
