import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/subject_11.dart';

class Subject10 extends StatelessWidget {
  const Subject10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題10'),
      ),
      floatingActionButton: const MyFloatingButton(pages: Subject11()),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: [
          Center(
              child: Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: const Center(child: Text('1')),
          )),
          Center(
              child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Center(child: Text('2')),
          )),
          Center(
              child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Center(child: Text('3')),
          )),
        ],
      ),
    );
  }
}
