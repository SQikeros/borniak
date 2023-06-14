import 'package:borniak/feature/meals/models/meals_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  final TextEditingController _textEditingController = TextEditingController();
  final Box<ShoppingItem> _shoppingBox = Hive.box<ShoppingItem>('shoppingBox');

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  List item = [

  ];

  void _addItem(String name) {
    if (name.isNotEmpty) {
      final item = ShoppingItem()
        ..name = name
        ..isPurchased = false;
      _shoppingBox.add(item);
      _textEditingController.clear();
    }
  }

  void _toggleItem(ShoppingItem item) {
    item.isPurchased = !item.isPurchased;
    item.save();
  }

  void _deleteItem(ShoppingItem item) {
    item.delete();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      labelText: 'Dodaj przedmiot',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _addItem(_textEditingController.text);
                  },
                  child: Text('Dodaj'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ValueListenableBuilder<Box<ShoppingItem>>(
              valueListenable: _shoppingBox.listenable(),
              builder: (context, box, _) {
                final items = box.values.toList();
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return ListTile(
                      leading: Checkbox(
                        value: item.isPurchased,
                        onChanged: (_) {
                          _toggleItem(item);
                        },
                      ),
                      title: Text(item.name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _deleteItem(item);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      );
  }
}
