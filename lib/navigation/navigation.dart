
import 'package:app_finanzas_flutter/navigation/home.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outlined),
            label: 'Top 5',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: 'Reservaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_off_outlined),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }
}
