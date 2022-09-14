import 'package:booktrip/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import './text.dart';
class Button extends StatelessWidget {
  bool isResponsive;
Function() OnPress;
 String Text ;

  double width;

  Button({this.isResponsive = false, required this.width, required this.OnPress, this.Text= 'Click Here'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular( 20),
          color: Color.fromRGBO(160, 32, 240, 380)),
      child: Row(

 crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          smallText(text: Text)

          ,IconButton(

splashRadius: 23,
            hoverColor: Color.fromRGBO(160, 32, 240, 300) ,
              onPressed: OnPress,
              icon: Icon(
                Icons.subdirectory_arrow_right,
                size: 30,
              )),
        ],
      ),
    );
  }
}



class GoBack extends StatelessWidget {
  const GoBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){

      Navigator.pop(context);


    }, icon:
    
    Icon(Icons.subdirectory_arrow_left
    ,size: 30,


    )
    
    );
  }
}









