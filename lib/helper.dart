import 'package:flutter/material.dart';

class Helpre extends StatefulWidget {
  const Helpre({super.key});

  @override
  State<Helpre> createState() => _HelpreState();
}

class _HelpreState extends State<Helpre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('second page'),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'The button takes u back',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),),
                onPressed: () => Navigator.pushNamed(context, '/fourth'),
                child: const Text('Magic'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}