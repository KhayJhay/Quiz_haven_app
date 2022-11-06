import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Function? builder;

  Screen({this.builder});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: builder!(context),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              color: Color(0xFF3c1053),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ],
    );
  }
}
