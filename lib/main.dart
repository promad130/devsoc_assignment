import 'package:applicaiton/helper.dart';
import 'package:applicaiton/mainpage.dart';
import 'assignment1.dart';
import 'assignment2.dart';
import 'assignment3.dart';
import 'assignment4.dart';
import 'assignment_bonus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MainPage(),
      '/first': (context) => HelloWorld(),
      '/second': (context) => TextF(),
      '/third': (context) => Fruits(),
      '/fourth': (context) => Nav(),
      '/bonus': (context) => Mix(),
      '/helper': (context) => Helpre(),
    },
  ));
}