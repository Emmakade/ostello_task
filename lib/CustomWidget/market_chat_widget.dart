import 'package:flutter/material.dart';

class MarketChatWidget extends StatelessWidget {
  final String img;
  final String txt;
  const MarketChatWidget({
    super.key,
    required this.img,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          img,
          scale: 1.0,
          //height: 330,
          width: 35,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          txt,
          style: TextStyle(
              fontFamily: "Avenir",
              fontSize: 14,
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
