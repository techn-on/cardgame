import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Countdown extends StatefulWidget {
  const Countdown({Key? key}) : super(key: key);

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 70.0,
          fontFamily: 'Canterbury',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            ScaleAnimatedText(
              '브레이-킷\n      타임',
              duration: const Duration(milliseconds: 1000),
              scalingFactor: 0.5,
              textAlign: TextAlign.center,
              textStyle: const TextStyle(color: Colors.black, fontSize: 300),
            ),
            ScaleAnimatedText(
              '3',
              duration: const Duration(milliseconds: 1000),
              scalingFactor: 0.5,
              textAlign: TextAlign.center,
              textStyle: const TextStyle(color: Colors.black, fontSize: 300),
            ),
            ScaleAnimatedText('2',
                duration: const Duration(milliseconds: 1000),
                scalingFactor: 0.5,
                textAlign: TextAlign.center,
                textStyle: const TextStyle(color: Colors.black, fontSize: 300)),
            ScaleAnimatedText('1',
                duration: const Duration(milliseconds: 1000),
                scalingFactor: 0.5,
                textAlign: TextAlign.center,
                textStyle: const TextStyle(color: Colors.black, fontSize: 300)),
          ],
          onTap: () {},
        ),
      ),
    );
  }
}
