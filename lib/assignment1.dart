import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  State <HelloWorld> createState() =>  _HelloWorldState();
}

class _HelloWorldState extends State <HelloWorld> {
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
      backgroundColor: Colors.lightBlueAccent,
    body: 
    const Center(child: Text
                    ('Yeah that is it. It is just hello world', 
                      style: TextStyle(fontSize: 24, fontFamily: 'Horizon'))
                ),
    );
  }
}