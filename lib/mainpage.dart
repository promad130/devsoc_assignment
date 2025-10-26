import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
    Widget buildAssignmentButton({required String title, required String route, required Color color}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
        onPressed: () => Navigator.pushNamed(context, route),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Welcome'),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  "Assignment: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
            ),
            ListTile(
              leading: const Icon(Icons.wysiwyg_rounded),
              title: const Text('1'),
              onTap: (){
                Navigator.pushNamed(context, '/first');
              },
            ),
            ListTile(
              leading: const Icon(Icons.wysiwyg_rounded),
              title: const Text('2'),
              onTap: (){
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              leading: const Icon(Icons.wysiwyg_rounded),
              title: const Text('3'),
              onTap: (){
                Navigator.pushNamed(context, '/third');
              },
            ),
            ListTile(
              leading: const Icon(Icons.wysiwyg_rounded),
              title: const Text('4'),
              onTap: (){
                Navigator.pushNamed(context, '/fourth');
              },
            ),
            ListTile(
              leading: const Icon(Icons.wysiwyg_rounded),
              title: const Text('Bonus'),
              onTap: (){
                Navigator.pushNamed(context, '/bonus');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Please choose the assignment from the side drawer or use the buttons below.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40),

              buildAssignmentButton(
                title: 'Assignment 1',
                route: '/first',
                color: Colors.deepPurple,
              ),
              const SizedBox(height: 14),

              buildAssignmentButton(
                title: 'Assignment 2',
                route: '/second',
                color: Colors.indigo,
              ),
              const SizedBox(height: 14),

              buildAssignmentButton(
                title: 'Assignment 3',
                route: '/third',
                color: Colors.teal,
              ),
              const SizedBox(height: 14),

              buildAssignmentButton(
                title: 'Assignment 4',
                route: '/fourth',
                color: Colors.orange,
              ),
              const SizedBox(height: 14),

              buildAssignmentButton(
                title: 'Bonus Assignment',
                route: '/bonus',
                color: Colors.pinkAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}