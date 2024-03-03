import 'package:flutter/material.dart';

class AssessmentWidget extends StatelessWidget {
  const AssessmentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 340,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter,
                colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.0),
                  Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  Theme.of(context).colorScheme.primary,
                ],
                // stops: const [
                //   0.0,
                //   0.5,
                //   0.6
                // ]
              ),
              image: const DecorationImage(
                image: AssetImage("assets/patt.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30.0),
              )),
        ),
        Container(
          height: 510,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.0),
                  Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  Theme.of(context).colorScheme.primary,
                ],
                stops: const [
                  0.0,
                  0.5,
                  0.75
                ]),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/img_hq.png",
                  scale: 1.0,
                  //height: 330,
                  width: 180,
                ),
              ),
              Image.asset(
                "assets/shadow.png",
                scale: 1.0,
                //height: 330,
                width: 180,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "No Guessing, Just Knowing: Your ",
                      style: TextStyle(
                          fontFamily: "Avenir",
                          height: 1.5,
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.w800),
                    ),
                    TextSpan(
                        text: " Career Path ",
                        style: TextStyle(
                            backgroundColor: const Color(0xFFFFD400),
                            fontFamily: "Avenir",
                            fontSize: 22,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w800)),
                    TextSpan(
                      text: " Awaits!",
                      style: TextStyle(
                          fontFamily: "Avenir",
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.w800),
                    ),
                  ])),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Unlock your potential and get an instant report on customizsed career",
                    style: TextStyle(
                        height: 1.5,
                        fontFamily: "Avenir",
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.background,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor:
                            Theme.of(context).colorScheme.background),
                    child: Text(
                      "Start Assesment",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Avenir",
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w800),
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
