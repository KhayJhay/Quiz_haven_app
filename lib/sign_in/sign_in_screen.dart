import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:quiz_haven_main/models/carousel_model.dart';

class Sign_In_Screen extends StatefulWidget {
  @override
  State<Sign_In_Screen> createState() => _Sign_In_ScreenState();
}

class _Sign_In_ScreenState extends State<Sign_In_Screen> {
  int _current = 0;

  bool isSignupScreen = true;

  bool isRememberme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bg.jpg",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                color: Colors.deepPurple.withOpacity(.70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: isSignupScreen ? "Welcome to" : "Welcome",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Roboto Thin',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                          ),
                          children: [
                            TextSpan(
                              text: isSignupScreen ? " Quiz-haven," : " Back,",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto Thin',
                                  letterSpacing: 3),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      isSignupScreen
                          ? "Signup to Continue"
                          : "Sign to Continue",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Roboto Thin',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 3,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          buildSubmitBottomContainer(true),
          Positioned(
              top: 200,
              child: Container(
                height: isSignupScreen ? 380 : 280,
                padding: EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5,
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto Medium',
                                    fontWeight: FontWeight.bold,
                                    color: !isSignupScreen
                                        ? Colors.deepPurple
                                        : Colors.grey),
                              ),
                              if (!isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.deepOrangeAccent,
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isSignupScreen = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    color: isSignupScreen
                                        ? Colors.deepPurple
                                        : Colors.grey),
                              ),
                              if (isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.deepOrangeAccent,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (isSignupScreen) buildSIgnUpSection(),
                    if (!isSignupScreen) buildLoginSection(),
                  ],
                ),
              )),
          buildSubmitBottomContainer(false),
          Positioned(
            top: 640,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 400,
                    height: 150,
                    child: Swiper(
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                carousels[index].image,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topRight,
                                stops: [0.3, 0.9],
                                colors: [
                                  Colors.deepPurple.withOpacity(.6),
                                  Colors.deepPurpleAccent.withOpacity(.4),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "About Us",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      autoplayDelay: 1000,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildLoginSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(CupertinoIcons.mail, "user@gmail.com", false, true),
          buildTextField(
              CupertinoIcons.lock_circle, "*************", true, false),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: isRememberme,
                      onChanged: (value) {
                        setState(() {
                          isRememberme = !isRememberme;
                        });
                      }),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgotten Password?",
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container buildSIgnUpSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(
            CupertinoIcons.person,
            "User Name",
            false,
            false,
          ),
          buildTextField(
            CupertinoIcons.mail,
            "email",
            false,
            true,
          ),
          buildTextField(
            CupertinoIcons.lock_circle,
            "password",
            true,
            false,
          ),
          buildTextField(
            CupertinoIcons.phone,
            "mobile number",
            false,
            false,
          ),
          RichText(
            text: TextSpan(
                text: "by pressing 'Submit' you agree to our ",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: "terms & conditions",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto Thin',
                        color: Colors.deepOrangeAccent),
                  )
                ]),
          ),
        ],
      ),
    );
  }

  Positioned buildSubmitBottomContainer(bool showShadow) {
    return Positioned(
        top: isSignupScreen ? 540 : 440,
        right: 0,
        left: 0,
        child: Center(
          child: Container(
            height: 80,
            width: 190,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  if (showShadow)
                    BoxShadow(
                        color: Colors.black.withOpacity(.3),
                        spreadRadius: 1.5,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                ]),
            child: !showShadow
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.deepPurpleAccent,
                            Colors.purpleAccent
                          ],
                        )),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                : Center(),
          ),
        ));
  }
}

Widget buildTextField(
    IconData icon, String hintext, bool isPassword, bool isEmail) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15.0),
    child: TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hintext,
        hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    ),
  );
}
