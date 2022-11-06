import 'dart:ui';
import 'package:flutter/material.dart';

abstract class Global {
  static const Color lightBlue = const Color(0xffdee6f3);
  static const Color darkBlue = const Color(0xff4A64FE);
  static const Color blue = const Color(0xff1c2a7f);
  static const Color lightBlack = const Color(0xff201F22);
  static const Color white = const Color(0xffffffff);
  static const Color lightGrey = const Color(0xfff1f3f6);
  static const Color mediumGrey = const Color(0xffe5e7ea);
  static const Color darkGrey = const Color(0xffa3a6a9);

  static final globalKey = GlobalKey<AnimatedListState>();
  static const String home = 'assets/pngs/splashBig.png';
  static const String trivia = 'assets/images/trivia.png';
  static const String createquiz = 'assets/images/create.png';
  static const String discover = 'assets/images/discover.png';
  static const String findfriends = 'assets/images/friends.png';
  static const String waecforum = 'assets/images/waec.jpg';


  static final List<Map> menuItems = [
    {
      'name': 'Homepage',
      'image': home,
      'descText':
      "Welcome to QuizHaven, \nLet's Have Fun",
    },
    {
      'name': 'Trivia',
      'image': trivia,
      'descText':
      "Broaden your knowledge \nby playing here",
    },
    {
      'name': 'Create Quiz',
      'image': createquiz,
      'descText':
      "Create and share \nquiz amongst friends",

    },
    {
      'name': 'Discover',
      'image': discover,
      'descText':
      "Discover more challenging \nStuffs and enjoy",

    },
    {
      'name': 'Find New Friends',
      'image': findfriends,
      'descText':
      "Find New Friends From \nYour Contacts.",

    },
    {
      'name': 'Waec Forum',
      'image': waecforum,
      'descText':
      "Join the Waec Forum to share \nand solve challenging \nquestions",

    },
  ];
}
