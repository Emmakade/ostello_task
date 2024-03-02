import 'package:flutter/material.dart';
import 'package:task/MyPaint/circle_painter.dart';

class TopServiceContainer extends StatelessWidget {
  final String title;
  final String desc;
  final String img;
  const TopServiceContainer({
    super.key,
    required this.title,
    required this.desc,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.92,
        child: ClipRRect(
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(20)),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 170,
            decoration: ShapeDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            child: CustomPaint(
              painter: CircPainter(),
              child: Row(
                children: [
                  Expanded(
                    //padding: EdgeInsets.all(5),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 18,
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            desc,
                            style: const TextStyle(
                                height: 1.5,
                                fontFamily: "Avenir",
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  side: BorderSide(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      width: 1.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Create Now',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(Icons.arrow_forward_ios_rounded,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      size: 20),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    img,
                    scale: 1.0,
                    //height: 330,
                    width: 120,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
