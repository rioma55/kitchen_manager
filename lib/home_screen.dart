import 'package:flutter/material.dart';
import 'features/ricette/presentation/ricette_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const RicetteListScreen(),
    Center(child: Text('Menù')),
    Center(child: Text('Magazzino')),
  ];

  final List<String> _titles = ['Ricette', 'Menù', 'Magazzino'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_currentIndex])),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Ricette'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu), label: 'Menù'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Magazzino'),
        ],
      ),
    );
  }
}
