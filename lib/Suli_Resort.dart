


import 'package:flutter/material.dart';


class SuliResort extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(



        child: Column(

          children: [

            Text('hi'),
            FlatButton(onPressed: (){

              Navigator.pop(context);


            }, child: Text('Suli'))




          ],



        ),
      ),




    );
  }
}
