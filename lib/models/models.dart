import 'package:flutter/material.dart';

class MenuData {
  String name;
  String image;
  String descText;

  MenuData.fromMap(data)
      : this.name = data['name'],
        this.image = data['image'],
        this.descText = data['descText'];
}
