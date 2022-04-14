import 'package:flutter/material.dart';
import 'package:tictac/home.dart';
import 'package:tictac/menu.dart';
import 'package:tictac/detailes.dart';


void main() {
  runApp( MaterialApp(
     initialRoute: '/',

    routes: {
      '/':(context){ return home();},
      '/menu':(context) => menu(),
      '/detailes':(context) => detailes(),
    },
    
  ));
}
