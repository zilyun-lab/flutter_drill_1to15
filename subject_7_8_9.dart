import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:flutter_drill_junya/Subjects/subject_10.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class Subject7 extends StatelessWidget {
  const Subject7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題7と8と9'),
        ),
        floatingActionButton: const MyFloatingButton(
          pages: Subject10(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  launch('https://81-web.com/?s=&cat%5B%5D=93',
                      forceSafariVC: true, forceWebView: true);
                },
                child: const Text('アプリ内外部ブラウザ'),
              ),
              ElevatedButton(
                onPressed: () {
                  launch('https://81-web.com/?s=&cat%5B%5D=93',
                      forceSafariVC: false, forceWebView: false);
                },
                child: const Text('外部ブラウザ'),
              ),
              ElevatedButton(
                child: const Text('課題8　ダイアログ表示'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('タイトル'),
                          content: const Text('ダイアログの内容を表示させます。'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'キャンセル',
                                  style: TextStyle(color: Colors.blue),
                                )),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MyHomePage()));
                                },
                                child: const Text('OK'))
                          ],
                        );
                      });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                      (route) => false);
                },
                child: const Text('課題9「画面遷移の制御」'),
              )
            ],
          ),
        ));
  }
}
