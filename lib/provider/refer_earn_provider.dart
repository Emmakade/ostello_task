import 'package:flutter/material.dart';
import 'package:task/DataModel/refer_earn.dart';

class ReferEarnProvider extends ChangeNotifier {
  //referral details dummydata
  static List<Map<String, dynamic>> dummyText = [
    {
      'title': 'Refer & Earn',
      'description':
          'Invite a friend to ostello and earn ₹1000 worth of coins.',
      'image': 'assets/img_logo.png',
      'background': const Color(0xFF16763E),
      'color': const Color(0xFFFFFFFF),
    },
    {
      'title': 'Refer & Earn',
      'description':
          'Invite a friend to ostello and earn ₹1000 worth of coins.',
      'image': 'assets/img_gov.png',
      'background': const Color(0xFFE67A1F),
      'color': const Color(0xFFFFFFFF),
    }
  ];

  //get referral details from server
  Future<List<ReferEarn>> getReferDetails() async {
    await Future.delayed(const Duration(seconds: 2));
    List<ReferEarn> refererList =
        dummyText.map((data) => ReferEarn.fromMap(data)).toList();
    return refererList;
  }
}
