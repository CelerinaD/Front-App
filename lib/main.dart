import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('KCTech App'),
        ),
        backgroundColor: Colors.brown,
      ),

      body: Center(
        child: Image.network('https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?cs=srgb&dl=pexels-pixabay-38238.jpg&fm=jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
            Icons.add,
            color: Colors.blueAccent,
           ),
         ),
        ),
      ));
}
