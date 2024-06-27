import 'package:flutter/material.dart';
import 'package:mobile_appfront/services/product.dart';
import 'package:mobile_appfront/services/menuCard.dart';
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List products = <Product>[
    Product(productName: "Dark Choco", price: 49.99), //Product
    Product(productName: "Okinawa", price: 45.99), //Product
    Product(productName: "Red Velvet", price: 45.99), // Product
    Product(productName: "Matcha", price: 49.99),
    Product(productName: "Wintermelon", price: 49.99),
  ];

  Widget cardTemplate(product){
    return Card(
      color: Colors.brown[500],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                product.productName,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

            ),
            Text(
                '${product.price}',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        foregroundColor: Colors.white70,
        title: Text(
            'Menu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.black,

          ),
        ),
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: products.map((product) => Menucard(product: product)).toList(),
        ),
      ),
    );
  }
}