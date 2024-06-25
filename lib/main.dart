import 'package:flutter/material.dart';
import 'package:nav/widgets/photo_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const PhotoPage()));
        },
        child: const Text('Hello World!'),
      ),
      appBar: AppBar(title: const Text('App')),
    );
  }
}
