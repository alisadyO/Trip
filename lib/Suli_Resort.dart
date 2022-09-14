


import 'package:booktrip/Box.dart';
import 'package:flutter/material.dart';


// am file katek clivk dakay aw page daktwa ka grid view tedaya lo  resort




class Suliresort extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suli Resort'),
        backgroundColor: Color.fromRGBO(160, 32, 240, 300),
        titleTextStyle: TextStyle(
            letterSpacing:4 ,
            fontSize: 24,
            color: Colors.white,
            wordSpacing: 3),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
            2,//lera dyare dakay ka chand grid dawe
                (index) => SuliResortBox(
              index: index,
            )),
      ),
    );
  }
}
