import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    child: Image.asset('assets/6997662.png'),
                    radius: 80.0,
                  ),
                ),
                Divider(
                  height: 50.0,
                  color: Colors.grey,
                  thickness: 5.0,
                ),
                Row(
                  children: [
                    Icon(
                        Icons.person_3,
                      color: Colors. brown,

                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'NAME:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
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
                Row(
                  children: [
                    Icon(Icons.calendar_month,
                    color: Colors.brown,
                    ),
                    SizedBox(width: 3.0,),

                    Text(
                      'YEAR:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        letterSpacing: 2.0,

                      ),
                    ),
                  ],
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
                Row(
                  children: [
                    Icon(Icons.email,
                      color: Colors.brown,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      'EMAIL:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Add Year'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.brown),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
