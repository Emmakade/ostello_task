import 'package:flutter/material.dart';

class MultiContainer extends StatelessWidget {
  final String title;
  final String desc;
  final String img;
  final Color bg;
  final Color color;

  const MultiContainer({
    super.key,
    required this.title,
    required this.desc,
    required this.img,
    required this.bg,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.88,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: ShapeDecoration(
        color: bg,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 22,
                      color: color,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  desc,
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "Avenir",
                      fontSize: 14,
                      color: color,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Image.asset(
            img,
            scale: 1.0,
            height: MediaQuery.sizeOf(context).height * 0.15,
            width: MediaQuery.sizeOf(context).height * 0.14,
          ),
        ],
      ),
    );
  }
}
