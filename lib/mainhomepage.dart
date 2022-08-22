import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff000000),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    expandedHeight: 20, // appbar size 조절 나중에 하자
                    backgroundColor: const Color(0xff000000),
                    floating: true,
                    snap: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        children: [
                          Center(
                            // 이것은 수정될 수 있기 때문에 놔둠
                            child: Image.asset(
                              "assets/appname.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
            body: GridView.count(
              childAspectRatio: 2 / 3,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: [
                cardDeckButton("전체"),
                cardDeckButton("랜덤"),
                cardDeckButton("연애"),
                cardDeckButton("연애2"),
                cardDeckButton("교회"),
                cardDeckButton("과거"),
                cardDeckButton("팀모임"),
                cardDeckButton("MT"),
              ],
            )));
  }
}

Widget cardDeckButton(String cardContent) {
  String cardPath = 'assets/cardbackground.png';

  return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      width: 160,
      height: 240,
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              minimumSize: Size.zero, padding: EdgeInsets.zero),
          child: Stack(children: [
            SizedBox(
              width: 160,
              height: 240,
              child: Stack(
                children: [
                  Ink.image(
                      image: AssetImage(cardPath),
                      fit: BoxFit.fill,
                      child: const InkWell(
                        onTap: null,
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: 160,
              height: 240,
              alignment: Alignment.center,
              child: Text(
                cardContent,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color(0xffFFFFFF),
                    height: 150 / 100,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ])));
}
