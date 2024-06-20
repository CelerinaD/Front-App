import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.grey,
    appBar: AppBar(
      title: Text('User Profile'),
      backgroundColor: Colors.brown,
      centerTitle: true,
    ),
    body: Padding(
      padding:  EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME:',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'Celerina C. De Mesa',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25.0,
            ),

          ),
          SizedBox(height: 30.0,),
          Text(
            'YEAR:',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              letterSpacing: 2.0,

            ),
          ),
          Text(
            'Fourth Year',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'EMAIL:',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
          ),
          Text(
            '21-14289@g.batstate-u.edu.ph',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    ),

  ),
));
