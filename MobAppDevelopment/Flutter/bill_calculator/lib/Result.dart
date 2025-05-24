import 'package:flutter/material.dart';

class Result extends StatefulWidget {
var billDetails ={};
   Result(this.billDetails ,{super.key});
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KE Energy Association",
          style: TextStyle(color: Colors.indigoAccent, fontSize: 25),
        ),
        centerTitle: true,
        actions: [],
      ),
      body: Center(
        child: Text(
          "Your bill is here:${widget.billDetails['finalBillAmount']}",
        ),
      ),
    );
  }
}
