import 'dart:convert';

import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  var productDetails = {};
  ProductDetailScreen(this.productDetails, {super.key});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Image.memory(base64Decode(widget.productDetails['image']), height: 200, fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text(widget.productDetails['title']),
            SizedBox(height: 20,),
            Text(widget.productDetails['description']),
            SizedBox(height: 20,),
            Text("Rs. ${widget.productDetails['price'].toString()}"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
            child: Text("Add To Cart"),)

          ],
        ),
      ),
    );
  }
}