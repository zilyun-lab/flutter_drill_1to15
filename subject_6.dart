import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/web_view.dart';

class Subject6 extends StatelessWidget {
  const Subject6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _imageList = [
      'https://images.unsplash.com/photo-1605137305211-70d22270c1bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2342&q=80',
      'https://images.unsplash.com/photo-1618519764620-7403abdbdfe9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
      'https://images.unsplash.com/photo-1588497859490-85d1c17db96d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
      'https://images.unsplash.com/photo-1580164631075-b3f1304f4051?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題6'),
      ),
      floatingActionButton: const MyFloatingButton(
        pages: WebViewPage(),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(4),
          itemCount: _imageList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8,
              childAspectRatio: 1.4),
          itemBuilder: (context, index) {
            return Image.network(
              _imageList[index],
              fit: BoxFit.cover,
            );
          }),
    );
  }
}
