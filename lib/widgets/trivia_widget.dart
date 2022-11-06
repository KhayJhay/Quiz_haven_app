import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_haven_main/widgets/screen_widget.dart';

class Trivia extends Screen {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 30),
      child: SingleChildScrollView(
        child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Choose Category",style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins-Bold',
                      color: Color(0xFF3c1053),
                    ),),

                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                      sliver: SliverGrid.count(
                        crossAxisCount:2,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 16,
                        childAspectRatio: 1.1,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFad5389).withOpacity(0.7),
                                  Color(0xFF3c1053).withOpacity(0.8),
                                ],
                                end: Alignment.topRight,
                                begin: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Image.asset('assets/pngs/testube.png')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Science",style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: Colors.white,
                                  ),),
                                ),
                                Text("30 Quizzes",style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFad5389).withOpacity(0.7),
                                  Color(0xFF3c1053).withOpacity(0.8),
                                ],
                                end: Alignment.topRight,
                                begin: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Image.asset('assets/pngs/physics2.png')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Physics",style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: Colors.white,
                                  ),),
                                ),
                                Text("30 Quizzes",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFad5389).withOpacity(0.7),
                                  Color(0xFF3c1053).withOpacity(0.8),
                                ],
                                end: Alignment.topRight,
                                begin: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Image.asset('assets/pngs/pi.png')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Maths",style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: Colors.white,
                                  ),),
                                ),
                                Text("30 Quizzes",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFad5389).withOpacity(0.7),
                                  Color(0xFF3c1053).withOpacity(0.8),
                                ],
                                end: Alignment.topRight,
                                begin: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Image.asset('assets/pngs/geog.png')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Geography",style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: Colors.white,
                                  ),),
                                ),
                                Text("30 Quizzes",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFad5389).withOpacity(0.7),
                                  Color(0xFF3c1053).withOpacity(0.8),
                                ],
                                end: Alignment.topRight,
                                begin: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Image.asset('assets/pngs/dev.png')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("IT",style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: Colors.white,
                                  ),),
                                ),
                                Text("30 Quizzes",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFad5389).withOpacity(0.7),
                                  Color(0xFF3c1053).withOpacity(0.8),
                                ],
                                end: Alignment.topRight,
                                begin: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: Image.asset('assets/pngs/pol.png')
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text("Political",style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins-SemiBold',
                                    color: Colors.white,
                                  ),),
                                ),
                                Text("30 Quizzes",style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
