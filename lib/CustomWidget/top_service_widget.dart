import 'package:flutter/material.dart';
import 'package:task/MyPaint/circle_2_painter.dart';

class TopServiceWidget extends StatelessWidget {
  final String img;
  final String title;
  const TopServiceWidget({
    super.key,
    required this.img,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.435,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20)),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 170,
          decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
          child: CustomPaint(
            painter: Circle2Painter(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  img,
                  scale: 1.0,
                  //height: 330,
                  width: 120,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
