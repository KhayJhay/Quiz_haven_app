import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_haven_main/enums/enum.dart';
import 'package:quiz_haven_main/models/home_model.dart';
import 'package:quiz_haven_main/widgets/create_quiz_widget.dart';
import 'package:quiz_haven_main/widgets/discover_widget.dart';
import 'package:quiz_haven_main/widgets/find_friends.dart';
import 'package:quiz_haven_main/widgets/trivia_widget.dart';
import 'package:quiz_haven_main/widgets/waec_forum.dart';
import 'package:quiz_haven_main/widgets/widgets.dart';

import '../globals.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final model = Provider.of<HomeModel>(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFad5389),
            Color(0xFF3c1053),
          ],
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        /*
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.wb_sunny_rounded),
                    SizedBox(width: 5,),
                    Text("GOOD MORNING"),
                  ],
                ),

              ],
            ),
          ),
        ),*/
        extendBodyBehindAppBar: true,
        body: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Stack(
            children: <Widget>[
              AnimatedList(
                key: Global.globalKey,
                initialItemCount: model.listTiles.length,
                itemBuilder: (context, index, animation) {
                  bool isLast = index == model.listTiles.length - 1;
                  return SlideTransition(
                    position: animation.drive(model.tween),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: isLast ? 300.0 : 0.0),
                      child: MenuListWidget(
                        item: model.listTiles[index],
                      ),
                    ),
                  );
                },
              ),
              GestureDetector(
                onVerticalDragStart: (start) {
                  model.verticalDragStart = start.globalPosition.dy;
                },
                onVerticalDragUpdate: (update) {
                  if (model.verticalDragStart > update.globalPosition.dy) {
                    model.setScrollDirection(BoxScrollDirection.Up);
                  } else {
                    model.setScrollDirection(BoxScrollDirection.Down);
                  }
                },
                onVerticalDragEnd: (_) {
                  if (model.state == ViewState.Idle) {
                    if (model.scroll == BoxScrollDirection.Down &&
                        !model.isToggled) {
                      print('GOING DOWN');
                      model.toggleMenu(height: height);
                    } else if (model.scroll == BoxScrollDirection.Up &&
                        model.isToggled) {
                      print('GOING UP');
                      model.toggleMenu();
                    }
                  }
                },
                child: AnimatedContainer(
                  transform: Matrix4.identity()..translate(0.0, model.translateY),
                  duration: Duration(milliseconds: 500),
                  curve: model.curve,
                  child: Screen(
                    builder: (context){
                      switch(model.active.name){
                        case 'Homepage':
                        return HomeWidget();
                        break;
                        case 'Trivia':
                          return Trivia();
                          break;
                        case 'Create Quiz':
                          return CreateQuizWidget();
                          break;
                        case 'Discover':
                          return DiscoverWidget();
                          break;
                        case 'Find New Friends':
                          return FindFriendsWidget();
                          break;
                        case 'Waec Forum':
                          return WaecForumWidget();
                          break;
                      }
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
