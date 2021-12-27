import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/subject_4.dart';

class Subject2 extends StatelessWidget {
  const Subject2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> newsList = [
      '今日のニュース',
      '昨日のニュース',
      '先週のニュース',
      '１ヶ月前のニュース',
      '１年前のニュース'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('課題２と３'),
      ),
      floatingActionButton: const MyFloatingButton(
        pages: Subject4(),
      ),
      body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return newsTile(newsList[index]);
          }),
    );
  }

  Widget newsTile(String newsTitle) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                newsTitle,
                style: const TextStyle(fontSize: 18),
              ),
              const Spacer(),
              const Text(
                '詳細へ',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
