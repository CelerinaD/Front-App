import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int year = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.brown,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(2.0),
        child:
        Card(
          color: Colors.brown[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/6997662.png'),
                      backgroundColor: Colors.white,
                      radius: 80.0,
                    ),
                  ),
                  Divider(
                    height: 50.0,
                    color: Colors.black,
                    thickness: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_3,
                        color: Colors. brown,

                      ),
                      SizedBox(width: 10.0,),
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
                    '$year Year',
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
                    onPressed: (){
                      setState(() {
                        year += 1;
                      });
                    },
                    child: Text(
                      'Add Year',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.brown),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),

    );
  }
}
