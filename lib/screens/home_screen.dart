import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/CustomWidget/assesment_widget.dart';
import 'package:task/CustomWidget/multipurpose_container.dart';
import 'package:task/CustomWidget/title_widget.dart';
import 'package:task/CustomWidget/top_service_wid2.dart';
import 'package:task/CustomWidget/top_service_widget.dart';
import 'package:task/DataModel/refer_earn.dart';
import 'package:task/MyPaint/top_action.dart';
import 'package:task/utils/image_asset.dart';
import 'package:task/utils/my_strings.dart';
import 'package:task/utils/svg_asset.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Widget profileLocation =
        SvgPicture.asset(assetName, semanticsLabel: 'Profile Location');
    final Widget arrowDown =
        SvgPicture.asset(assetName0, semanticsLabel: 'arrow down');
    final Widget homeSvg = SvgPicture.asset(assetName1, semanticsLabel: 'Home');
    final Widget marketplaceSvg =
        SvgPicture.asset(assetName2, semanticsLabel: 'Marketplace');

    ReferEarn ref = ReferEarn(
        title: referTitle,
        description: referDesc,
        image: referImage,
        background: Theme.of(context).colorScheme.background,
        color: Theme.of(context).colorScheme.onBackground);
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
                  profileName,
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
                        fullName,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
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
                          coin,
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
              const AssessmentWidget(),
              const SizedBox(
                height: 30,
              ),
              const TitleWidget(
                title: topService,
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
                      img: graduationCap,
                      title: scholarshipTitle,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TopServiceContainer(
                title: careerRoadmap,
                desc: careerDesc,
                img: threeArrows,
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
                  child: MultiContainer(referEarn: ref),
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
          aiImage,
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
