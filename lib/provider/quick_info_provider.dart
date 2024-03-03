import 'package:flutter/material.dart';
import 'package:task/DataModel/quick_info.dart';

class QuickInfoProvider extends ChangeNotifier {
  //info details dummydata
  static List<Map<String, String>> dummyData = [
    {
      'title': 'Career Trends 1',
      'description':
          'Those who plan ahead hold the key to the future. Construct a strategic career path today.'
              'Those who plan ahead hold the key to the future. Construct a strategic career path today.'
              'Those who plan ahead hold the key to the future. Construct a strategic career path today.',
      'btnText': 'Explore Now',
    },
    {
      'title': 'Career Trends 2',
      'description':
          'Those who plan ahead hold the key to the future. Construct a strategic career path today.'
              'Those who plan ahead hold the key to the future. Construct a strategic career path today.'
              'Those who plan ahead hold the key to the future. Construct a strategic career path today.',
      'btnText': 'Explore Now',
    },
    {
      'title': 'Career Trends 3',
      'description':
          'Those who plan ahead hold the key to the future. Construct a strategic career path today.'
              'Those who plan ahead hold the key to the future. Construct a strategic career path today.'
              'Those who plan ahead hold the key to the future. Construct a strategic career path today.',
      'btnText': 'Explore Now',
    },
  ];

  //get info details from server
  Future<List<QuickInfo>> getInfo() async {
    await Future.delayed(const Duration(seconds: 2));
    List<QuickInfo> quickInfoList =
        dummyData.map((data) => QuickInfo.fromMap(data)).toList();
    return quickInfoList;
  }
}
