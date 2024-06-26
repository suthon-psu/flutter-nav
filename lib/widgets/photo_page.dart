import 'package:flutter/material.dart';
import 'package:nav/models/photo.dart';

class PhotoPage extends StatelessWidget {
  final Photo photo;
  const PhotoPage({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: photo.title,
        child: Center(
            child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(photo.imageUrl, fit: BoxFit.cover),
            ),
            _buildGradient(),
            _buildTitleAndSubtitle(photo.title, photo.subtitle)
          ],
        )),
      ),
      appBar: AppBar(title: const Text('Image')),
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle(String title, String subtitle) {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
