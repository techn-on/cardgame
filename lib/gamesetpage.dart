import 'package:cardgame/readypage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SetPage extends StatefulWidget {
  const SetPage({Key? key}) : super(key: key);

  @override
  State<SetPage> createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  late Timer _timer;
  late Timer _a;
  String imagePath = "assets/startbutton.png";

  int cardcount = 15;
  /*
  _SetPageState() {
    _timer = new Timer(const Duration(milliseconds: 5000), () {
      setState(() {
        while (true) {
          imagePath = "assets/warningstart.png";
          _a = new Timer(const Duration(milliseconds: 5000), () {
            imagePath = "assets/startbutton.png";
          });
        }
        ;
      });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/starthome.png"),
              fit: BoxFit.cover,
            )),
          ),
          Align(
            alignment: Alignment(0, 0.04434), // 정확하게 센터는 아니라서 계산 하고 넣은것.
            child: Center(
                child: Container(
                    width: 310,
                    height: 378,
                    child: Image(
                      image: AssetImage("assets/cardmove.gif"),
                      fit: BoxFit.cover,
                    ))),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 709),
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                height: 68,
                width: 340,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReadyPage()));
                    },
                    child: Image.asset(imagePath)),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Do something

  void incrementCounter() {
    setState(() {
      if (cardcount == 25) {
        cardcount = 25;
      } else {
        cardcount++;
      }
    });
  }

  void minusCounter() {
    setState(() {
      if (cardcount == 0) {
        cardcount = 0;
      } else {
        cardcount--;
      }
    });
  }
}
