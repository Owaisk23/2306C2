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
        title: Text('Home Screen'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        // padding: const EdgeInsets.all(40),
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 40),
        // padding: const EdgeInsets.only(top: 40, left: 20, right: 20),

        child: Center(
         
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Text('Welcome to the First Screen',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 24,
            //   ),
            // ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Icon(Icons.home, color: Colors.white, size: 50,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.brown,
              child: Icon(Icons.access_alarm, color: Colors.white, size: 50,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Icon(Icons.cabin, color: Colors.white, size: 50,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Icon(Icons.leaderboard, color: Colors.white, size: 50,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
              child: Icon(Icons.wheelchair_pickup, color: Colors.white, size: 50,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey,
              child: Icon(Icons.cabin, color: Colors.white, size: 50,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
              child: Icon(Icons.leaderboard, color: Colors.white, size: 50,),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurpleAccent,
              child: Icon(Icons.wheelchair_pickup, color: Colors.white, size: 50,),
            )
            
           


          ],
        ),
        ),
      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Center(
         
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       // Text('Welcome to the First Screen',
      //       //   style: TextStyle(
      //       //     color: Colors.white,
      //       //     fontSize: 24,
      //       //   ),
      //       // ),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.red,
      //         child: Icon(Icons.home, color: Colors.white, size: 50,),
      //       ),
      //       SizedBox(height: 10,),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.brown,
      //         child: Icon(Icons.access_alarm, color: Colors.white, size: 50,),
      //       ),
      //       SizedBox(height: 10,),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //         child: Icon(Icons.cabin, color: Colors.white, size: 50,),
      //       ),
      //       SizedBox(height: 10,),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blue,
      //         child: Icon(Icons.leaderboard, color: Colors.white, size: 50,),
      //       ),
      //       SizedBox(height: 10,),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.pink,
      //         child: Icon(Icons.wheelchair_pickup, color: Colors.white, size: 50,),
      //       ),
      //       SizedBox(height: 10,),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blueGrey,
      //         child: Icon(Icons.cabin, color: Colors.white, size: 50,),
      //       ),
      //       SizedBox(height: 10,),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.deepOrange,
      //         child: Icon(Icons.leaderboard, color: Colors.white, size: 50,),
      //       ),
      //       SizedBox(height: 10,),
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.deepPurpleAccent,
      //         child: Icon(Icons.wheelchair_pickup, color: Colors.white, size: 50,),
      //       )
            
           


      //     ],
      //   ),
      //   ),
      // ),
    );
  }
}