import 'package:booktrip/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  bool isResponsive;

  double width;

  Button({this.isResponsive = false, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(160, 32, 240, 380)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.trending_flat,
                size: 30,
              )),
        ],
      ),
    );
  }
}
