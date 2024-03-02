import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/screens/ai_screen.dart';
import 'package:task/screens/home_screen.dart';
import 'package:task/screens/market_place_screen.dart';

class DashboardNavigation extends StatefulWidget {
  const DashboardNavigation({super.key});

  @override
  State<DashboardNavigation> createState() => _DashboardNavigationState();
}

class _DashboardNavigationState extends State<DashboardNavigation> {
  final String assetName1 = 'assets/img_nav_home.svg';
  final String assetName2 = 'assets/img_nav_marketplace.svg';
  int current = 0;

  final screens = [
    const HomeScreen(),
    const MarketPlaceScreen(),
    const AiScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final Widget homeSvg = SvgPicture.asset(assetName1, semanticsLabel: 'Home');
    final Widget marketplaceSvg =
        SvgPicture.asset(assetName2, semanticsLabel: 'Marketplace');
    return Scaffold(
      body: screens[current],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.background,
        onPressed: () {
          Navigator.pushNamed(context, '/ai');
        },
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
                  Column(
                    children: [
                      homeSvg,
                      Text(
                        'Home',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      )
                    ],
                  ),
                  Column(
                    children: [marketplaceSvg, const Text('Marketplace')],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
