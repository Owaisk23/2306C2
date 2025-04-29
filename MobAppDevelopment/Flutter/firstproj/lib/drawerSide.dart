import 'package:firstproj/firstScreen.dart';
import 'package:firstproj/product.dart';
import 'package:firstproj/scndScreen.dart';
import 'package:flutter/material.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({ Key? key }) : super(key: key);

  @override
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey
            ),
            child: Text('Drawer Header', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Second Screen'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScndScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.car_crash),
            title: Text('First Screen'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
            },
          ),
        ],
      ),
    );
  }
}