import 'package:flutter/material.dart';

class ApiProduct extends StatefulWidget {
  const ApiProduct({ Key? key }) : super(key: key);

  @override
  _ApiProductState createState() => _ApiProductState();
}

class _ApiProductState extends State<ApiProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Product Fetching"),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}