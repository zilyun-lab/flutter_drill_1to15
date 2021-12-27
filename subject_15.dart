import 'package:flutter/material.dart';
import 'package:flutter_drill_junya/MyWidgets/my_florting_button.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Subject15 extends StatelessWidget {
  const Subject15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題１５'),
      ),
      floatingActionButton: const MyFloatingButton(
        pages: Subject15(),
      ),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              title: 'First',
              image: Center(child: Image.asset('images/spring.jpeg')),
              bodyWidget: const Text('１枚め！')),
          PageViewModel(
              title: 'Second',
              image: Center(child: Image.asset('images/summer.jpeg')),
              bodyWidget: const Text('２枚め！')),
          PageViewModel(
              title: 'Third',
              image: Center(child: Image.asset('images/autumn.jpeg')),
              bodyWidget: const Text('３枚め！')),
        ],
        onDone: () {},
        done: const Text('完了'),
        showDoneButton: true,
        onSkip: () {},
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Icon(Icons.navigate_next),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(30, 10),
          activeColor: Colors.blueAccent,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
