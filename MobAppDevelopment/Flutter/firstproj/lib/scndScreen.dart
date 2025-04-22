import 'package:flutter/material.dart';

class ScndScreen extends StatefulWidget {
  const ScndScreen({ Key? key }) : super(key: key);

  @override
  _ScndScreenState createState() => _ScndScreenState();
}

class _ScndScreenState extends State<ScndScreen> {
  var user = {"userName": "Owais Ahmed", "userAge": 22, "userDesig": "Software Developer"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //String Interpolation
      appBar: AppBar(
        title: Text('${user['userName']}\'s Profile'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      // backgroundColor: Colors.black87,
      body: Center(
        child: Column(children: [
          Text("User Detail's"),
          Image.network("https://avatars.githubusercontent.com/u/57331778?v=4", 
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          Text("Name: ${user['userName']}"),
          Text("Age: ${user['userAge']}"),
          Text("Designation: ${user['userDesig']}"),
          ElevatedButton(
            onPressed: (){
              print("User Name Before Change: ${user['userName']}");
              setState(() {
                user['userName'] = "Sir Owais Ahmed Khan";
              });
              print("User Name After Change: ${user['userName']}");
            },
            child: Text('Change User Name'))

        ],),
      ),
    );
  }
}