
import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  final Widget infoWidegt;
  final Function onPressed;
  
  WidgetContainer({this.infoWidegt,this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
    child: Container(
      height: 80.0,
      alignment: Alignment.center,
      
      child:infoWidegt,
     
      margin: EdgeInsets.all(5.0),
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: Colors.blue[300],),
    ),
    );
  }
}
