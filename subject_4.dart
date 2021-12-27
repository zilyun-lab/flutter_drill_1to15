import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/subject_5.dart';

class Subject4 extends StatelessWidget {
  const Subject4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> bloodType = [
      'A型',
      'B型',
      'AB型',
      'O型',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題４'),
      ),
      floatingActionButton: const MyFloatingButton(
        pages: Subject5(),
      ),
      body: GridView.builder(
          itemCount: bloodType.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
          itemBuilder: (context, index) {
            return bloodTile(bloodType[index]);
          }),
    );
  }

  Widget bloodTile(String text) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
