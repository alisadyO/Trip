

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './button.dart';
import './Erbil_resort.dart';
import './Duhuok_Resort.dart';
import './Suli_Resort.dart';
import 'package:lottie/lottie.dart';


class ListOption extends StatelessWidget {



//lam file option select dakay ka  ch sharakt dawe

  @override
  Widget build(BuildContext context) {
    return Scaffold(






        body: Column(

          mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,



        children: [


          Container(
        margin: EdgeInsets.only(left: 55, top: 75),

            child: Column(



                    children: [
                    GoBack()
                      ,SizedBox(height: 35,)



                      ,Button(
                          Text: 'Erbil',
                          width: 300,
                          OnPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Erbilresort()),
                            );
                          }),

                      SizedBox(height: 40,)



                      ,Button( Text: 'Suli',


                          width: 300, OnPress: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Suliresort()));



                          })
                      ,     SizedBox(height: 40,)
                      ,Button( Text: 'Duhok',

                          width: 300, OnPress: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DuhokResort()));


                          })
                      ,SizedBox(height: 20,)

                      ,Container(

                        height: 250,
                        width: 320,

                        child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_aKRZfw.json'

                            ,fit: BoxFit.cover
                        ),


                      )




 ],
                  ),









          )








        ],










      )





      ,








    );
  }
}













/*


Button(
Text: 'Erbil',
width: 300,
OnPress: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => Erbilresort()),
);
}),


SizedBox(height: 40,)



,Button( Text: 'Suli',


width: 300, OnPress: (){

Navigator.push(context, MaterialPageRoute(builder: (context)=> SuliResort()));



})







,     SizedBox(height: 40,)
,Button( Text: 'Duhok',

width: 300, OnPress: (){

Navigator.push(context, MaterialPageRoute(builder: (context)=>DuhokResort()));


})
,SizedBox(height: 10,)











, Flexible(
fit: FlexFit.loose,
child: Container(

height: 300,
width: 300,
child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_aKRZfw.json'

,fit: BoxFit.cover
),



),
)




*/






















