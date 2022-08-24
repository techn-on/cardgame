import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/scheduler.dart';
import 'gamesetpage.dart';

class ReadyPage extends StatefulWidget {
  const ReadyPage({Key? key}) : super(key: key);

  @override
  State<ReadyPage> createState() => _ReadyPageState();
}

class _ReadyPageState extends State<ReadyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/ready.png"),
          fit: BoxFit.cover,
        )),
      ),
      Center(
        child: AnimatedTextKit(
          pause: const Duration(microseconds: 0),
          totalRepeatCount: 1,
          animatedTexts: [
            ScaleAnimatedText(
              '브레이-킷타임',
              duration: const Duration(milliseconds: 3000),
              scalingFactor: 0.5,
              textAlign: TextAlign.center,
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.w700),
            ),
            ScaleAnimatedText(
              '3',
              duration: const Duration(milliseconds: 1000),
              scalingFactor: 0.5,
              textAlign: TextAlign.center,
              textStyle: const TextStyle(color: Colors.white, fontSize: 600),
            ),
            ScaleAnimatedText('2',
                duration: const Duration(milliseconds: 1000),
                scalingFactor: 0.5,
                textAlign: TextAlign.center,
                textStyle: const TextStyle(color: Colors.white, fontSize: 600)),
            ScaleAnimatedText('1',
                duration: const Duration(milliseconds: 1000),
                scalingFactor: 0.5,
                textAlign: TextAlign.center,
                textStyle: const TextStyle(color: Colors.white, fontSize: 600)),
          ],
          onFinished: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SetPage()));
          },
        ),
      )
    ]));
  }
}
