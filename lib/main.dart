import 'package:flutter/material.dart';
import 'package:mobile_appfront/home.dart';
import 'package:mobile_appfront/pages/dashboard.dart';
import 'package:mobile_appfront/pages/menu.dart';
import 'package:mobile_appfront/pages/signup.dart';
import 'package:mobile_appfront/pages/login.dart';

void main() => runApp(MaterialApp(
 initialRoute: '/login',
  routes: {
   '/' : (context) => Dashboard(),
   '/menu' : (context) => Menu(),
   '/profile' : (context) => Home(),
   '/signup' : (context) => Signup(),
   '/login' : (context) => Login(),
 },
));