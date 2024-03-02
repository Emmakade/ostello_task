import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/CustomWidget/multipurpose_container.dart';
import 'package:task/CustomWidget/title_widget.dart';
import 'package:task/CustomWidget/top_service_wid2.dart';
import 'package:task/CustomWidget/top_service_widget.dart';
import 'package:task/MyPaint/top_action.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String assetName = 'assets/img_search.svg';
  final String assetName0 = 'assets/img_arrow_down.svg';

  final String assetName1 = 'assets/img_nav_home.svg';
  final String assetName2 = 'assets/img_nav_marketplace.svg';

  @override
  Widget build(BuildContext context) {
    final Widget profileLocation =
        SvgPicture.asset(assetName, semanticsLabel: 'Profile Location');
    final Widget arrowDown =
        SvgPicture.asset(assetName0, semanticsLabel: 'arrow down');
    final Widget homeSvg = SvgPicture.asset(assetName1, semanticsLabel: 'Home');
    final Widget marketplaceSvg =
        SvgPicture.asset(assetName2, semanticsLabel: 'Marketplace');
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: false,
          title: Container(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Rajbir,',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 17,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    profileLocation,
                    const Expanded(
                      child: Text(
                        'Gandhinagar, Ahmedabadeba',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    InkWell(onTap: () {}, child: arrowDown),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 130,
                  height: 50,
                  child: CustomPaint(
                    painter: LinePainter(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Spacer(),
                        Image.asset(
                          "assets/coin.png",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '3500',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontFamily: 'Avenir',
                          ),
                        ),
                        const Spacer(
                          flex: 5,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 20,
                      child: Image.asset("assets/img_img.png"),
                    ),
                  ),
                )
              ],
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: const Color(0xFFEEEEEE),
              height: 1.0,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 340,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: FractionalOffset.bottomCenter,
                          end: FractionalOffset.topCenter,
                          colors: [
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.0),
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
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
                            //Theme.of(context).colorScheme.primary,
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.0),
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.5),
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
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 20.0, right: 20.0),
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
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
                                    fontWeight: FontWeight.w800),
                              ),
                              TextSpan(
                                  text: " Career Path ",
                                  style: TextStyle(
                                      backgroundColor: const Color(0xFFFFD400),
                                      fontFamily: "Avenir",
                                      fontSize: 22,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w800)),
                              TextSpan(
                                text: " Awaits!",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontSize: 22,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background,
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
                                  color:
                                      Theme.of(context).colorScheme.background,
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  backgroundColor:
                                      Theme.of(context).colorScheme.background),
                              child: Text(
                                "Start Assesment",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Avenir",
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontWeight: FontWeight.w800),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const TitleWidget(
                title: "Top Services",
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    child: const TopServiceWidget(
                      img: "assets/img_stat.png",
                      title: "Career Trends",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 5,
                    child: const TopServiceWidget(
                      img: "assets/graduation_cap.png",
                      title: "Scholarship",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TopServiceContainer(
                title: "Your Career Roadmap",
                desc:
                    "Those who plan ahead hold the key to the future. Construct a",
                img: "assets/img_arrow3.png",
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 5,
                  child: MultiContainer(
                    title: "Refer & Earn",
                    desc:
                        "Invite a friend to ostello and earn ₹1000 worth of coins.",
                    img: "assets/img_purse.png",
                    bg: Colors.white,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.background,
        onPressed: () {},
        tooltip: 'ai',
        child: Image.asset(
          "assets/img_ai.png",
          width: 100,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 80,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 12.0, left: 28.0, right: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Column(
                      children: [
                        homeSvg,
                        Text(
                          'Home',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/market_place');
                    },
                    child: Column(
                      children: [marketplaceSvg, const Text('Marketplace')],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
