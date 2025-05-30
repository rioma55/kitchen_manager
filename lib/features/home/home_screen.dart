import 'package:flutter/material.dart';
import 'package:kitchen_manager/core/db/database_helper.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _recipes = [];

  @override
  void initState() {
    super.initState();
    _loadRecipes();
  }

  Future<void> _loadRecipes() async {
    final recipes = await DatabaseHelper.instance.getAllRecipes();
    setState(() {
      _recipes = recipes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kitchen Manager'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _recipes.isEmpty
            ? const Center(child: Text('Nessuna ricetta disponibile'))
            : GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(_recipes.length, (index) {
                  final recipe = _recipes[index];
                  return _buildCard(recipe);
                }),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _showAddRecipeDialog(context);
          _loadRecipes(); // aggiorna la lista dopo salvataggio
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCard(Map<String, dynamic> recipe) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.grey[300],
              child: const Center(child: Icon(Icons.fastfood)),
            ),
            const SizedBox(height: 8),
            Text(recipe['name'] ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(recipe['category'] ?? ''),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showAddRecipeDialog(BuildContext context) async {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController categoryController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Nuova Ricetta'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nome ricetta'),
            ),
            TextField(
              controller: categoryController,
              decoration: const InputDecoration(labelText: 'Categoria'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annulla'),
          ),
          ElevatedButton(
            onPressed: () async {
              final name = nameController.text;
              final category = categoryController.text;
              if (name.isNotEmpty) {
                await DatabaseHelper.instance.insertRecipe({
                  'name': name,
                  'category': category,
                });
                Navigator.pop(context);
              }
            },
            child: const Text('Salva'),
          ),
        ],
      ),
    );
  }
}

