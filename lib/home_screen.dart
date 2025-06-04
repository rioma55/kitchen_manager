import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = <Widget>[
    const Center(child: Text('Home')),
    const Center(child: Text('Ricette')),
    const Center(child: Text('Menù')),
    const Center(child: Text('Magazzino')),
    const Center(child: Text('Food Cost')),
    const SizedBox(), // Placeholder per Lista Spesa
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kitchen Manager')),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 5) {
            Navigator.pushNamed(context, '/lista_spesa');
          } else {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Ricette'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Menù'),
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Magazzino'),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: 'Food Cost'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista Spesa'),
        ],
      ),
    );
  }
}


