import 'package:flutter/material.dart';
import 'package:task/DataModel/refer_earn.dart';

class MultiContainer extends StatelessWidget {
  final ReferEarn referEarn;
  const MultiContainer({
    super.key,
    required this.referEarn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.88,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(right: 10.0),
      decoration: ShapeDecoration(
        color: referEarn.background,
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
                  referEarn.title!,
                  style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 22,
                      color: referEarn.color,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  referEarn.description!,
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "Avenir",
                      fontSize: 14,
                      color: referEarn.color,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Image.asset(
            referEarn.image!,
            scale: 1.0,
            height: MediaQuery.sizeOf(context).height * 0.15,
            width: MediaQuery.sizeOf(context).height * 0.14,
          ),
        ],
      ),
    );
  }
}
