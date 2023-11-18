import 'package:flutter/material.dart';

class netlab extends StatefulWidget {
  const netlab({super.key});

  @override
  State<netlab> createState() => _netlabState();
}

class _netlabState extends State<netlab> {
  List<String> itemList = [];
  TextEditingController addItemController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.outlined(onPressed: () {}, icon: Icon(Icons.search))
        ],
        title: Text("Network lab"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(
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
                child: Text("Add Item"),
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
