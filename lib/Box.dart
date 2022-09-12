
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './text.dart';
import './resortplace.dart';


// am file bo box naw gridView

//
//
//



class ErbilResortBox extends StatelessWidget {
  int index;

  List ResortPalce =[
    ShandarCave(img1:'https://www.donsmaps.com/images9/shanidarsm.jpg' , img2:'https://live.staticflickr.com/1386/5170508404_b35e204e51_c.jpg' ,img3:'https://www.traveltomtom.net/images/nieuwe_indeling/artikels/iraq/kurdistan/shanidar-cave-kurdistan-iraq.jpg' , LText: 'Shanidar Cave',),
    ShandarCave(img1:'https://www.donsmaps.com/images9/shanidarsm.jpg' , img2:'https://live.staticflickr.com/1386/5170508404_b35e204e51_c.jpg' ,img3:'https://www.traveltomtom.net/images/nieuwe_indeling/artikels/iraq/kurdistan/shanidar-cave-kurdistan-iraq.jpg' , LText: 'Gali Ali',),

  ];





  List img = [
    'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/f8/51/1c/shanidar-cave-is-an-archaeolog.jpg',
    'http://4.bp.blogspot.com/-85q71YNJJvw/URjsxeC1-dI/AAAAAAAAAvw/QrlxWb6q64s/s1600/shalal1.jpg',
    'https://mapio.net/images-p/6352671.jpg',
    'https://static.wixstatic.com/media/bfe56b_9880acdde996433da3fee7334f8f89bf~mv2.jpg/v1/fill/w_2500,h_1666,al_c/bfe56b_9880acdde996433da3fee7334f8f89bf~mv2.jpg'
  ];

  List name = [
    'Shanidar Cave',
    'Gali  WaterFall',
    'Bexal WaterFall',
    'Korek Mountain'
  ];

  ErbilResortBox({this.index = 0});

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed:(){
        Navigator.push(context,

            MaterialPageRoute(builder: (context)=>ResortPalce[index])

        ) ;

      }


      ,
      child: Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color.fromRGBO(160, 32, 240, 300),
              ),
              borderRadius: BorderRadius.circular(20)),
          elevation: 22,
          shadowColor: Color.fromRGBO(160, 32, 240, 300),
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 25),
                  width: 380,
                  height: 200,
                  child: ClipRRect(
                      child: Image.network(
                        img[index],
                        height: 250,
                        width: 250,
                      ),
                      borderRadius: BorderRadius.circular(800))),
              smallText(
                text: name[index],
                size: 30,
              )
            ],
          )),
    );
  }
}
