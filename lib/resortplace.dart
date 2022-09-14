import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './text.dart';
import './button.dart';

class resort extends StatelessWidget {

  String img1;
  String img2;
  String img3;
String LText;
String SText;


  resort({required this.img1,required this.img2,required this.img3,required this.LText,required this.SText});




  late List img = [img1,img2,img3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  GoBack(),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                    padding: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Color.fromRGBO(160, 32, 240, 3870),
                            width: 2,
                            style: BorderStyle.solid)),
                    height: 430,
                    width: 460,
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ClipRRect(
                                child: Image.network(
                                  img[index],
                                  width: 320,
                                  height: 320,
                                ),
                                borderRadius: BorderRadius.circular(800),
                              ),
                              Row(
                                children: List.generate(3, (IndexDot) {
                                  return Container(
                                    margin: EdgeInsets.only(left: 80, top: 40),
                                    width: 18,
                                    height: index == IndexDot ? 18 : 16,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: index == IndexDot
                                            ? Color.fromRGBO(160, 32, 240, 3870)
                                            : Color.fromRGBO(
                                                160, 32, 240, 200)),
                                  );
                                }),
                              )
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LargeText(
                    text: LText,
                    size: 40,
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 15, top: 25, right: 7),
                    height: 430,
                    width: 390,
                    child: smallText(
                      text: SText,
                      size: 25,
                    ),
                  )
                ],
              );
            }));
  }
}




