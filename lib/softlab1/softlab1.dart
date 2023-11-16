import 'package:flutter/material.dart';

class Softlab1 extends StatefulWidget {
  const Softlab1({super.key});

  @override
  State<Softlab1> createState() => _Softlab1State();
}

class _Softlab1State extends State<Softlab1> {
  List<String> itemList = [];
  TextEditingController addItemController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.search))
        ],
        title: const Text("Software Lab-1"),
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
