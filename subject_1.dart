import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/subject_2_3.dart';

class SubjectOne extends StatelessWidget {
  const SubjectOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題１'),
      ),
      floatingActionButton: const MyFloatingButton(
        pages: Subject2(),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  child: const Center(child: Text('Main')),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: const Center(child: Text('A')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: const Center(child: Text('B')),
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Colors.green,
                      child: const Center(child: Text('B')),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
