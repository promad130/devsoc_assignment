import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  const Fruits({super.key});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  final List<String> fruits = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'Pineapple',
    'Grapes',
    'Strawberry',
    'Watermelon',
    'Cherry',
    'Papaya',
    'Kiwi',
    'Guava',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Hello World'),
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
      backgroundColor: Colors.purpleAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              elevation: 4,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  fruits[index],
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}