import 'package:flutter/material.dart';

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
