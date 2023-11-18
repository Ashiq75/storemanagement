import 'package:flutter/material.dart';

class Eleclab extends StatefulWidget {
  const Eleclab({super.key});

  @override
  State<Eleclab> createState() => _EleclabState();
}

class _EleclabState extends State<Eleclab> {
  List<String> itemList = [];
  TextEditingController addItemController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.search))
        ],
        title: const Text("Electronic lab"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: addItemController,
              decoration: InputDecoration(
                  labelText: 'item',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _addItem(addItemController.text);
                },
                child: const Text("Add Item"),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(itemList[index]),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  void _addItem(String newItem) {
    if (newItem.isNotEmpty) {
      setState(() {
        itemList.add(newItem);
        addItemController.clear(); // Clear the text field after adding the item
      });
    }
  }
}
