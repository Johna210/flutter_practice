import 'package:flutter/material.dart';

import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];

  void _addItem() async {
    final newGrocery = await Navigator.push<GroceryItem>(
      context,
      MaterialPageRoute(
        builder: ((context) => const NewItem()),
      ),
    );
    if (newGrocery == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newGrocery);
    });
  }

  void _onDismissed(GroceryItem item) {
    setState(() {
      _groceryItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: _groceryItems.isEmpty
          ? const Center(
              child: Text('You got no items yet.'),
            )
          : ListView.builder(
              itemCount: _groceryItems.length,
              itemBuilder: (ctx, index) => Dismissible(
                onDismissed: (direction) {
                  _onDismissed(_groceryItems[index]);
                },
                background: Container(),
                key: ValueKey(_groceryItems[index].id),
                child: ListTile(
                  title: Text(_groceryItems[index].name),
                  leading: Container(
                    width: 24,
                    height: 24,
                    color: _groceryItems[index].category.color,
                  ),
                  trailing: Text(
                    _groceryItems[index].quantity.toString(),
                  ),
                ),
              ),
            ),
    );
  }
}
