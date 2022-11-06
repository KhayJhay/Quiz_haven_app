import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_haven_main/widgets/screen_widget.dart';

class HomeWidget extends Screen {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 30),
      child: SingleChildScrollView(
        child: Column(
          children:[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hello,',style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF3c1053),
                    fontFamily: 'Poppins-Light',
                  ),),
                  SizedBox(width: 5,),
                  Text('Jeffery',style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-Bold',
                    color: Color(0xFF3c1053),
                  ),),
                ],
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFad5389),
                      Color(0xFF3c1053),
                    ],
                    end: Alignment.topRight,
                    begin: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,left: 20),
                          child: Text("Enter Your Quiz Code",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins-Light',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 5),
                          child: Text("To Play With Friends",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins-Light',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0,left: 20),
                          child: Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                /*
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Icon(Icons.arrow_forward_rounded)
                                ),
                                */
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Quiz",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-Bold',
                    color: Color(0xFF3c1053),
                  ),),
                  Text("View All",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-Light',
                    color: Color(0xFF3c1053),
                  ),),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFad5389),
                          Color(0xFF3c1053),
                        ],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/pngs/science.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                              child: Text("Science Quiz(Trivia)",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("20/20 Questions",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFad5389),
                          Color(0xFF3c1053),
                        ],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/pngs/physics.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                              child: Text("Physics Quiz(Trivia)",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("20/20 Questions",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Light',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFad5389),
                          Color(0xFF3c1053),
                        ],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/pngs/geography.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                              child: Text("Geography Quiz",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("20/20 Questions",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Light',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Live Quizzes",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-Bold',
                    color: Color(0xFF3c1053),
                  ),),
                  Text("View All",style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-Light',
                    color: Color(0xFF3c1053),
                  ),),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFad5389),
                          Color(0xFF3c1053),
                        ],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/pngs/science.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                              child: Text("Science Quiz(Trivia)",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("20/20 Questions",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFad5389),
                          Color(0xFF3c1053),
                        ],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/pngs/physics.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                              child: Text("Physics Quiz(Trivia)",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("20/20 Questions",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Light',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFad5389),
                          Color(0xFF3c1053),
                        ],
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset("assets/pngs/geography.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                              child: Text("Geography Quiz",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins-Light',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("20/20 Questions",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: 'Poppins-Light',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
