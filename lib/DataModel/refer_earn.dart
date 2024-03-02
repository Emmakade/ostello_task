import 'package:flutter/material.dart';

class ReferEarn {
  String? title;
  String? description;
  String? image;
  Color? background;
  Color? color;
  ReferEarn(
      {this.title, this.description, this.image, this.background, this.color});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};

    map['title'] = title;
    map['description'] = description;
    map['image'] = image;
    map['background'] = background;
    map['color'] = color;

    return map;
  }

  ReferEarn.fromMap(Map<String, dynamic> map) {
    title = map['title'];
    description = map['description'];
    image = map['image'];
    background = map['background'];
    color = map['color'];
  }
}
