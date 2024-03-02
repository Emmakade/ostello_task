import 'package:flutter/material.dart';
import 'package:task/DataModel/quick_info.dart';

class QuickInfoProvider extends ChangeNotifier {
  static List<Map<String, String>> dummyData = [
    {
      'title': 'Career Trends 1',
      'description':
          'Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.',
      'btnText': 'Explore Now',
    },
    {
      'title': 'Career Trends 2',
      'description':
          'Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.',
      'btnText': 'Explore Now',
    },
    {
      'title': 'Career Trends 3',
      'description':
          'Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.Those who plan ahead hold the key to the future. Construct a strategic career path today.',
      'btnText': 'Explore Now',
    },
  ];

  Future<List<QuickInfo>> getInfo() async {
    await Future.delayed(Duration(seconds: 1));
    List<QuickInfo> quickInfoList =
        dummyData.map((data) => QuickInfo.fromMap(data)).toList();
    return quickInfoList;
  }
}
