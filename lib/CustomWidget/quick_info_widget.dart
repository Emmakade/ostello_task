import 'package:flutter/material.dart';
import 'package:task/DataModel/quick_info.dart';

class QuickInfoWidget extends StatelessWidget {
  final QuickInfo quickInfo;
  const QuickInfoWidget({
    super.key,
    required this.quickInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
        child: Stack(
          children: [
            Container(
              width: 291,
              height: 295,
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                // image: const DecorationImage(
                //     image: AssetImage("assets/img_bg.png")),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              right: -60,
              top: -50,
              child: Image.asset(
                "assets/img_bg.png",
                //width: 200,
                height: 300,
              ),
            ),
            Container(
              width: 291,
              height: 295,
              padding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    quickInfo.title,
                    style: const TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 22,
                        color: Color(0xFF0C0C0C),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    quickInfo.description,
                    style: TextStyle(
                        height: 1.5,
                        fontFamily: "Avenir",
                        fontSize: 14,
                        letterSpacing: MediaQuery.sizeOf(context).width / 900,
                        color: const Color(0xFF5A5A5A),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: const Color(0xFFF9F9F9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 1.0)),
                      child: Text(
                        quickInfo.btnText,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
