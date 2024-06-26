import 'package:flutter/material.dart';
import 'package:mobile_appfront/home.dart';
import 'package:mobile_appfront/pages/dashboard.dart';
import 'package:mobile_appfront/pages/menu.dart';

void main() => runApp(MaterialApp(
 routes: {
   '/' : (context) => Dashboard(),
   '/menu' : (context) => Menu(),
   '/profile' : (context) => Home(),
 },
));


