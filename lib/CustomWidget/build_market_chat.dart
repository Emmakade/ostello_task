import 'package:flutter/material.dart';
import 'package:task/CustomWidget/market_chat_widget.dart';

class BuildMarketChat extends StatelessWidget {
  const BuildMarketChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 204,
            width: 204,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.secondary,
              border: Border.all(color: const Color(0xFFE6CFFF), width: 2),
            ),
            child: Column(
              children: [
                //1st row
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Color(0xFFE8D4FF), width: 1)),
                  ),
                  child: Row(
                    children: [
                      //1x1
                      Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  color: Color(0xFFE8D4FF), width: 1)),
                        ),
                        child: const MarketChatWidget(
                          img: "assets/img_verified.png",
                          txt: "Verified Coaching",
                        ),
                      ),
                      //1x2
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Color(0xFFE8D4FF), width: 1)),
                        ),
                        child: const MarketChatWidget(
                          img: "assets/img_save_money.png",
                          txt: "Lowest Price",
                        ),
                      )
                    ],
                  ),
                ),
                //2nd row
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Color(0xFFE8D4FF), width: 1)),
                  ),
                  child: Row(
                    children: [
                      //2x1
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  color: Color(0xFFE8D4FF), width: 1)),
                        ),
                        child: const MarketChatWidget(
                          img: "assets/img_career_check.png",
                          txt: "Free Career Check",
                        ),
                      ),
                      //2x2
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Color(0xFFE8D4FF), width: 1)),
                        ),
                        child: const MarketChatWidget(
                          img: "assets/img_line_chart.png",
                          txt: "Progress Tacking",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          //payment
          Container(
              height: 208,
              width: 204,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/credit_card.png")),
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary,
              ))
        ],
      ),
    );
  }
}
