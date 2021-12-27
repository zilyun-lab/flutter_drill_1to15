import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/subject_6.dart';

class Subject5 extends StatelessWidget {
  const Subject5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _imageList = [
      'images/spring.jpeg',
      'images/summer.jpeg',
      'images/autumn.jpeg',
      'images/winter.png',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題5'),
      ),
      floatingActionButton: const MyFloatingButton(
        pages: Subject6(),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(4),
          itemCount: _imageList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 1.3),
          itemBuilder: (context, index) {
            return Image.asset(
              _imageList[index],
              fit: BoxFit.cover,
            );
          }),
    );
  }
}
