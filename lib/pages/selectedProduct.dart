import 'package:flutter/material.dart';
import 'package:mobile_appfront/services/product.dart';

class SelectedProduct extends StatefulWidget {
  final Product product;
  const SelectedProduct({super.key, required this.product});

  @override
  State<SelectedProduct> createState() => _SelectedProductState();
}

class _SelectedProductState extends State<SelectedProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text('Order'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
          children: [
      Text(widget.product.productName),
      Text(widget.product.description),
        ],
      ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  widget.product.price.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10.0,),
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icons.remove,
                  )
                  
                  Text()
                  
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
