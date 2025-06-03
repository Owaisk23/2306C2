import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: 
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Icon(Icons.home, color: Colors.white, size: 50),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.orange,
                child: Icon(Icons.shop, color: Colors.white, size: 50),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Icon(Icons.wheelchair_pickup_rounded, color: Colors.white, size: 50),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Icon(Icons.access_alarm, color: Colors.white, size: 50),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Icon(Icons.accessibility, color: Colors.white, size: 50),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}