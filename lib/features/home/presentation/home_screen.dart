import 'package:flutter/material.dart';
import 'package:kitchen_manager/features/ricette/presentation/ricette_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ListView(
        children: const [
          ListTile(
            title: Text("Vai a Ricette"),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            title: Text("Vai a Magazzino"),
            trailing: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}




