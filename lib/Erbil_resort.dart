import 'package:booktrip/Box.dart';
import 'package:flutter/material.dart';



// am file katek clivk dakay aw page daktwa ka grid view tedaya lo  resort




class Erbilresort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Erbil Resort'),
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
            4,
            (index) => ErbilResortBox(
                  index: index,
                )),
      ),
    );
  }
}
