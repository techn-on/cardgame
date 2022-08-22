import 'package:flutter/material.dart';

class SetPage extends StatefulWidget {
  const SetPage({Key? key}) : super(key: key);

  @override
  State<SetPage> createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  int cardcount = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/starthome.png"),
          fit: BoxFit.cover,
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(
          // left: 62,
          top: 347,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: 61,
              width: 61,
              child: InkWell(
                  onTap: () {
                    minusCounter();
                  },
                  child: Image.asset('assets/minusbutton.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                  width: 89,
                  height: 60,
                  child: Center(
                    child: Text(
                      "$cardcount" "장",
                      style: const TextStyle(
                        fontSize: 40,
                        height: 150 / 100,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              height: 61,
              width: 61,
              child: InkWell(
                  onTap: () {
                    incrementCounter();
                  },
                  child: Image.asset('assets/addbutton.png')),
            ),
          ],
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 200,
          ),
          child: TextButton(
              onPressed: () {},
              child: const Text(
                "게임 시작",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
              )),
        ),
      )
    ]));
  }

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
