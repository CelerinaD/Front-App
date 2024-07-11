import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        foregroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text(
              "Dashboard",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 230.0,),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/llll.webp'),
                backgroundColor: Colors.white,
                radius: 20.0,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 0),
        child: Container(
            child: SafeArea(
                child: Column(children: [
          FlutterCarousel(
            options: CarouselOptions(
              height: 450.0,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              showIndicator: true,
              slideIndicator: CircularSlideIndicator(),
            ),
            items: [
              'assets/sweets-shop-logo.jpg',
              'assets/cherry_puff.jpg',
              'assets/chocolates-png.png',
              'assets/Ice-cream-sundae-hero-11.jpg',
              'assets/tea.png',
            ].map((String imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.brown[200],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ]))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.0,
        onTap: (int val) {
          switch (val) {
            case 0:
              Navigator.pushNamed(context, '/menu');
              break;
            case 1:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
        currentIndex: 0,
        selectedItemColor: Colors.brown[500],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.paste,
                color: Colors.brown[900],
              ),
              label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                color: Colors.brown[900],
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
