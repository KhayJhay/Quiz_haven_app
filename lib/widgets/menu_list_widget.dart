import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_haven_main/models/home_model.dart';
import 'package:quiz_haven_main/models/models.dart';

class MenuListWidget extends StatelessWidget {
  final MenuData item;
  MenuListWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);
    final bool isSelected = model.active.name == item.name;
    return Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 10.0,
        bottom: 10.0,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          model.active = item;
          Future.delayed(Duration(milliseconds: 200), () {
            model.toggleMenu();
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.lightBlueAccent : Colors.black12.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                     item.image,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0,top:20,),
                    child: Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.bold,
                        color: isSelected ? Colors.deepPurple : Colors.white,
                        fontSize: 22,
                        fontFamily: 'Poppins-Bold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 10,),
                    child: Text(
                      item.descText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? Colors.deepPurple : Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
          /*Row(
            children: <Widget>[
              SizedBox(
                width: 30.0,
              ),
              Icon(
                item.icon,
                size: 18,
                color: isSelected ? Colors.blue : Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                item.name,
                style: TextStyle(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? Colors.blue : Colors.white,
                ),
              ),
            ],
          ),
          */
        ),
      ),
    );
  }
}
