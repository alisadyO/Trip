import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './text.dart';
import './resortplace.dart';

class ErbilResortBox extends StatelessWidget {
  int index;

  List ResortPalce = [
    resort(
      img1: 'https://www.donsmaps.com/images9/shanidarsm.jpg',
      img2: 'https://live.staticflickr.com/1386/5170508404_b35e204e51_c.jpg',
      img3:
          'https://www.traveltomtom.net/images/nieuwe_indeling/artikels/iraq/kurdistan/shanidar-cave-kurdistan-iraq.jpg',
      LText: 'Shanidar Cave',
      SText:
          'Shanidar Cave                               is an archaeological site located on Bradost Mountain, within the Zagros Mountains, in the Erbil Governorate of Kurdistan Region in northern Iraq It is known for the discovery of Neanderthal It was excavated between 1957-1961 by Ralph Solecki and his team from Columbia University and yielded the first adult Neanderthal skeletons in Iraq, dating between 60-80 000 years BP',
    ),
    resort(
      img1:
          'https://media-cdn.tripadvisor.com/media/photo-p/0e/4d/bb/8f/we-went-to-gail-ali-bag.jpg',
      img2:
          'https://d2wqffb2bc8st5.cloudfront.net/images/Jun-2021/1623671493gali-ali-bag-2-not-for-feature.jpg',
      img3:
          'https://scontent.febl5-2.fna.fbcdn.net/v/t1.6435-9/147973213_3687395304701679_1330380514097805292_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGk-pd6P09DvzSVKcap9vDKM0KbVwtnG6MzQptXC2cbo6TK7hWufOSc0D116oPT_fR7r36SUszwbjp6s1zudxtk&_nc_ohc=DSWI-I6S5yMAX-WcT2S&_nc_ht=scontent.febl5-2.fna&oh=00_AT8lpNCiD33tGb6uWAPavNt-EaojBU5b_0ugkcKyeqGR1g&oe=6344C796',
      LText: 'Gali WaterFall',
      SText:
          'Gali Ali Bag is One of The highest waterfall in the Kurdistan Region of Iraq. It is about 12 meters high, located beside Korek Mountain which itself is 2,076 meters above sea level. The waterfall is the crosspoint of three different rivers: the Rwandz, Sidakan, and Khalifan',
    ),
    resort(
      img1:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/0f/68/73/bekhal-summer-resort.jpg?w=1200&h=-1&s=1',
      img2:
          'https://knn.blob.core.windows.net/root/root/images/13152022_10152022_%DA%A9%D9%88%D8%B1%D8%AF%D8%B3%D8%AA%D8%A7%D9%86-%D9%87%D8%A7%D8%AA%D9%86%D9%89-%DA%AF%DB%95%D8%B4%D8%AA%DB%8C%D8%A7%D8%B1.jpg',
      img3:
          'https://mycamerajournal.files.wordpress.com/2011/12/bekhal-waterfall_edited1.jpg',
      LText: 'Bekhal WaterFall',
      SText:
          'Bekhal Waterfall is located in the mountainous northern part of the country in the Kurdistan Region, in Erbil Governorate. It is located 10 km west of Rawandiz and 135 km from Erbil. This waterfall hosts many visitors and tourists across the country',
    ),
    resort(
      img1:
          'https://i.pinimg.com/originals/e8/f8/65/e8f86525e37dd16e24705ecbbae00529.jpg',
      img2:
          'https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/289867459.jpg?k=85f54f888b149eff6977723cab0403bec28a65fa3d29525356e37279be6f8e9c&o=',
      img3:
          'https://d2wqffb2bc8st5.cloudfront.net/images/Feb-2022/1644688233resized%20snow%20festival.jpg',
      LText: 'korek Mountain',
      SText:
          'Mount Korek is a mountain located in Erbil Governorate of the Kurdistan Region Of Iraq, It is 50 kilometers away from the Iranian border And it is The Most prestigious project in Kurdistan Region The project is built on the Korek Mountain one of the Highest points in this Region The Resort has 132 Villas from One bedroom to 3 Bedrooms situated at 2000 Ft from seas level with a magnificent view of the Soran Valley throughout the Year',
    ),
  ];

// img naw box grid
  List img = [
    'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/f8/51/1c/shanidar-cave-is-an-archaeolog.jpg',
    'http://4.bp.blogspot.com/-85q71YNJJvw/URjsxeC1-dI/AAAAAAAAAvw/QrlxWb6q64s/s1600/shalal1.jpg',
    'https://mapio.net/images-p/6352671.jpg',
    'https://static.wixstatic.com/media/bfe56b_9880acdde996433da3fee7334f8f89bf~mv2.jpg/v1/fill/w_2500,h_1666,al_c/bfe56b_9880acdde996433da3fee7334f8f89bf~mv2.jpg'
  ];

// nawe naw box grid
  List name = [
    'Shanidar Cave',
    'Gali  WaterFall',
    'Bekhal WaterFall',
    'Korek Mountain'
  ];

  ErbilResortBox({this.index = 0});

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      // click blkay dachta naw information zyatr ka la naw resortplace file
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ResortPalce[index]));
      },
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

class SuliResortBox extends StatelessWidget {
  int index;

  List ResortPalce = [
    resort(
      img1:
          'https://as2.ftcdn.net/v2/jpg/02/38/06/19/1000_F_238061901_iCx6WxJsDgSvHm9HykhgYygam2pB9Gnh.jpg',
      img2:
          'https://media-cdn.tripadvisor.com/media/photo-m/1280/17/4f/d1/09/snacks-on-top-of-the.jpg',
      img3:
          'https://i.pinimg.com/originals/98/f1/2d/98f12d5f07329f68617e399de5c58a59.jpg',
      LText: 'Ahmad Awa',
      SText:
          'A beautiful waterfall in the hawraman region situated 84 km East of Sulaymaniyah and near the town of khurmall.It is in a rich, green vally,crossed by the Zallim River that flows down the middle of the mountain . A waterfall adds extra beauty to the surroundings.',
    ),
    resort(
      img1: 'https://rak-it.net/wp-content/uploads/2019/10/chavy-land1.jpg',
      img2:
          'https://www.polgunwaterparks.com/wp-content/uploads/2020/10/irak-chavi-land-8.jpg',
      img3:
          'https://lh3.googleusercontent.com/places/AAcXr8qq940hh7bsMgOzldXUQmSc7aZVuJOJfHCQ5hXEe9Fi70vPFiMw5D7nXYZ8c7R4BMTZjxhqOLyB3KV44832Aq-_uVzV5GT4Z-w=w660-h440-c',
      LText: 'Chavi Land',
      SText:
          'Chavi Land, Sulaymaniyah. Nestled beside a mountain, Chavi Land is an amusement park with the largest Ferris wheel in the Middle East. Attractions range from fast roller coasters and water attractions, to smaller rides for families with younger children',
    ),
  ];

  List img = [
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/44/18/c1/this-beautiful-resort.jpg?w=1200&h=1200&s=1',
    'https://pbs.twimg.com/media/DDDZn7AUIAAFhmq.jpg',
  ];

  List name = [
    'Ahmad awa',
    'Chavi Land',
  ];

  SuliResortBox({this.index = 0});

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ResortPalce[index]));
      },
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
