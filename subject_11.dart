import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/subject_12.dart';

class Subject11 extends StatelessWidget {
  const Subject11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題11'),
      ),
      floatingActionButton: const MyFloatingButton(
        pages: Subject12(),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300, minWidth: 200),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('横幅はいつも固定'),
            ),
          ),
        ),
      ),
    );
  }
}
