import 'package:flutter/material.dart';
import 'package:nav/models/photo.dart';
import 'package:nav/widgets/photo_page.dart';

var photoList = [
  Photo(
      title: 'abc',
      subtitle: 'hello world',
      imageUrl: 'https://api.pupasoft.com/public/profile.jpg'),
  Photo(
      title: 'xyz',
      subtitle: 'hello mars',
      imageUrl:
          'https://publish.purewow.net/wp-content/uploads/sites/2/2022/04/fluffy-cat-breeds-american-bobtail.jpg?fit=728%2C524')
];

class Thumbnail extends StatelessWidget {
  final Photo photo;
  const Thumbnail({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => PhotoPage(photo: photo)));
      },
      child: Container(
          padding: const EdgeInsets.all(30), child: Text(photo.title)),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: photoList.map<Thumbnail>((p) => Thumbnail(photo: p)).toList(),
      ),
      appBar: AppBar(title: const Text('App')),
    );
  }
}
