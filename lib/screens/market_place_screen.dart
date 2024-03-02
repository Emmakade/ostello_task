import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/CustomWidget/build_market_chat.dart';
import 'package:task/CustomWidget/multipurpose_container.dart';
import 'package:task/CustomWidget/quick_info_widget.dart';
import 'package:task/CustomWidget/title_widget.dart';
import 'package:task/DataModel/quick_info.dart';
import 'package:task/DataModel/refer_earn.dart';
import 'package:task/MyPaint/top_action.dart';
import 'package:task/provider/quick_info_provider.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({super.key});

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  final String assetName = 'assets/img_search.svg';
  final String assetName0 = 'assets/img_arrow_down.svg';

  final String assetName1 = 'assets/img_nav_home.svg';
  final String assetName2 = 'assets/img_nav_marketplace.svg';

  List<ReferEarn> referearns = [
    ReferEarn(
        title: 'Refer & Earn',
        description:
            'Invite a friend to ostello and earn ₹1000 worth of coins.',
        image: 'assets/img_logo.png',
        background: const Color(0xFF16763E),
        color: const Color(0xFFFFFFFF)),
    ReferEarn(
        title: 'Refer & Earn',
        description:
            'Invite a friend to ostello and earn ₹1000 worth of coins.',
        image: 'assets/img_gov.png',
        background: const Color(0xFFE67A1F),
        color: const Color(0xFFFFFFFF)),
  ];

  @override
  Widget build(BuildContext context) {
    final Widget profileLocation =
        SvgPicture.asset(assetName, semanticsLabel: 'Profile Location');
    final Widget arrowDown =
        SvgPicture.asset(assetName0, semanticsLabel: 'arrow down');

    final Widget homeSvg = SvgPicture.asset(assetName1,
        colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
        semanticsLabel: 'Home');
    final Widget marketplaceSvg = SvgPicture.asset(assetName2,
        colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.primary, BlendMode.srcIn),
        semanticsLabel: 'Marketplace');
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
                    fontSize: 16,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // const Icon(
                    //   Icons.person_pin_circle_sharp,
                    //   color: Colors.black54,
                    // ),
                    profileLocation,
                    const Expanded(
                      child: Text(
                        'Gandhinagar, Ahmedabad',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
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
              const SizedBox(
                height: 10,
              ),
              const TitleWidget(
                title: "Marketplace",
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildMarketChat(),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  alignment: WrapAlignment.spaceEvenly,
                  children: referearns
                      .map((re) => MultiContainer(
                          title: re.title!,
                          desc: re.description!,
                          img: re.image!,
                          bg: re.background!,
                          color: re.color!))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TitleWidget(
                title: "Quick Info",
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: FutureBuilder<List<QuickInfo>>(
                  future: QuickInfoProvider().getInfo(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      List<QuickInfo>? quickInfoList = snapshot.data;
                      return Row(
                        children: quickInfoList!
                            .map((quickInfo) =>
                                QuickInfoWidget(quickInfo: quickInfo))
                            .toList(),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                decoration: BoxDecoration(
                  //color: const Color(0x0FFF9F9F9),
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(16),

                  border: Border.all(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      width: 2),
                ),
                child: Stack(
                  children: [
                    Row(children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 0, left: 6),
                          child:
                              Text("Guiding you through the maze of choices!",
                                  style: TextStyle(
                                      fontFamily: "Avenir",
                                      //height: 1.5,
                                      fontSize: 30,
                                      color: Color(0xff757575),
                                      fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Image.asset(
                        "assets/img_craft.png",
                        scale: 1.0,
                        height: 230,
                      ),
                    ]),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 26,
                        decoration: BoxDecoration(
                          //color: const Color(0x0FFF9F9F9),
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(12)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(6.5),
                          child: Text(
                            "9k+ Students are using the platform to upgrade there career",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFF525251)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
                      children: [homeSvg, const Text('Home')],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/market_place');
                    },
                    child: Column(
                      children: [
                        marketplaceSvg,
                        Text(
                          'Marketplace',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
