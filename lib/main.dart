import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_haven_main/models/home_model.dart';
import 'package:quiz_haven_main/screens/home_screen.dart';
import 'package:quiz_haven_main/sign_in/sign_in_screen.dart';

import 'onBoarding_page/onBoarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      child: MaterialApp(
        title: 'Quiz Haven',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
