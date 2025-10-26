import 'package:flutter/material.dart';

class TextF extends StatefulWidget {
  const TextF({super.key});

  @override
  State <TextF> createState() => _TextFState();
}

class _TextFState extends State <TextF> {
  final TextEditingController _controller = TextEditingController();

  String _displayText = '';

  void _showText() {
    setState(() {
      _displayText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Text Field'),
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
      backgroundColor: Colors.lightGreenAccent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Type something...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _showText,
              child: Text('Show Text'),
            ),
            SizedBox(height: 20),

            // Displayed text
            Text(
              _displayText,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}