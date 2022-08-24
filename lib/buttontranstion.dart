import 'package:flutter/material.dart';
import 'readypage.dart';

class Startbutton extends StatefulWidget {
  const Startbutton({Key? key}) : super(key: key);

  @override
  _StartbuttonState createState() => _StartbuttonState();
}

class _StartbuttonState extends State<Startbutton>
    with TickerProviderStateMixin {
  late AnimationController _resizableController;

  AnimatedBuilder getContainer() {
    return AnimatedBuilder(
        animation: _resizableController,
        builder: (context, child) {
          return Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            height: 68,
            width: 340,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ReadyPage()));
              },
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: _resizableController.value * 10),
                  ),
                  child: Image.asset('assets/startbutton.png')),
            ),
          );
        });
  }

  @override
  void initState() {
    _resizableController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );
    _resizableController.addStatusListener((animationStatus) {
      switch (animationStatus) {
        case AnimationStatus.completed:
          _resizableController.reverse();
          break;
        case AnimationStatus.dismissed:
          _resizableController.forward();
          break;
        case AnimationStatus.forward:
          break;
        case AnimationStatus.reverse:
          break;
      }
    });
    _resizableController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Test"),
          centerTitle: true,
        ),
        body: Center(child: getContainer()));
  }
}
