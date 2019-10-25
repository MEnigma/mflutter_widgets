/*
* Copyright 2019 mark , All right reserved
* author : mark
* date : 2019-10-17
* ide : VSCode
*/

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class StructCell extends StatelessWidget {

  final int height;
  final Color color;
  final Widget leftView;
  final Widget middleView;
  final Widget rightView;

  StructCell({this.height,this.color,this.leftView,this.middleView,this.rightView});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(child: Row(
        children: <Widget>[
          leftView ?? Container(),
          middleView ?? Container(),
          rightView ?? Container()
        ],
      ),),
    );
  }

}
