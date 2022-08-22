import 'package:flutter/material.dart';

Widget cardDeckButton(String cardContent) {
  String cardPath = 'assets/card.png';

  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 18,
        ),
        child: SizedBox(
          width: 336,
          height: 520,
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
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 12,
        ),
        child: SizedBox(
          width: 336,
          height: 520,
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
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 6,
        ),
        child: SizedBox(
          width: 336,
          height: 520,
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
      ),
      SizedBox(
        width: 336,
        height: 520,
        child: Stack(
          children: [
            Ink.image(
                image: AssetImage(cardPath),
                fit: BoxFit.fill,
                child: InkWell(
                  onTap: () {},
                )),
            Container(
              alignment: Alignment.center,
              child: Text(
                cardContent,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 150 / 100,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
