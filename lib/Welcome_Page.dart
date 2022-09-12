import 'package:booktrip/button.dart';
import 'package:booktrip/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lottie/lottie.dart';
import './Select_Page.dart';
import './Erbil_resort.dart';
class WelcomePage extends StatelessWidget {

//am file welcome page  ka la 3 page pek hatwa
  List TextBig = ['Trips', 'Resort', 'Resort'];

  List textBig = ['Kurdistan', 'Resturant', 'Location'];
  List TextParagraph = [
    'Welcome To Our Resort App You Can see All the Resort Place in Kurdistan Throw This App',
    'Kurdistan Have a lot beautiful Resort Resturant You see All of them Throw this App',
    'You Can Get All the Location For the Resort Place in Kurdistan Throw This App'
  ];

  List animations = [
    'https://assets10.lottiefiles.com/packages/lf20_mdbdc5l7.json',
    'https://assets10.lottiefiles.com/private_files/lf30_zG8eIV.json',
    'https://assets3.lottiefiles.com/packages/lf20_sj0skmmg.json'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_, index) {
          return Container(
            width: 500,
            height: double.maxFinite,
            child: Container(
              margin: EdgeInsets.only(top: 90, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeText(text: TextBig[index],color: Colors.black87,),
                      smallText(text: textBig[index], size: 30),
                      SizedBox(
                        height: 10,
                      ) // box drust daka ka nabendre
                      ,
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 0, right: 20),
                        width: 200,
                        child: smallText(text: TextParagraph[index]),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      if(index == 0 )...[
                        Button(width: 150,OnPress: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListOption() ),
                          );



                        },)
                      ],

                      SizedBox(
                        height: 100,
                      ),
                      Expanded(
                        child: Container(
                          width: 300,
                          height: 300,
                          child: Lottie.network(animations[index],
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(
                        3,
                        (indexDot) => Container(
                              margin: EdgeInsets.only(bottom: 6),
                              width: 8,
                              height: index == indexDot ? 25 : 8,

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDot ? Color.fromRGBO(160, 32, 240, 3870) : Color.fromRGBO(160, 32, 240, 200) ),
                            )),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
