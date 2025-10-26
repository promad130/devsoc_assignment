import 'package:flutter/material.dart';

class Mix extends StatefulWidget {
  const Mix({super.key});

  @override
  State<Mix> createState() => _MixState();
}

class _MixState extends State<Mix> {
  final TextEditingController _controller = TextEditingController();

  final List<String> _items = [];

  void _addItem() {
    String text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _items.add(text);
        _controller.clear();
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter something!')),
      );
    }
  }

  void _removeItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Customizable item list'),
        actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              iconSize: 20.0,
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a new item...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                // Add button
                ElevatedButton(
                  onPressed: _addItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Add'),
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Divider(thickness: 1.2),

            Expanded(
              child: _items.isEmpty
                  ? const Center(
                      child: Text(
                        'No items yet — add something!',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                    )
                  : ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 3,
                          margin: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Text(
                              _items[index],
                              style: const TextStyle(fontSize: 18),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => _removeItem(index),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}