import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/Login.dart';
import 'package:firebase_crud/addproduct.dart';
// import 'package:firebase_crud/addproduct.dart';
import 'package:firebase_crud/firebase_options.dart';
import 'package:firebase_crud/products.dart';
import 'package:firebase_crud/signup.dart';
import 'package:firebase_crud/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()async {

  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn= prefs.getBool("isLoggedIn") ?? false;
  bool isAdmin= prefs.getBool("isAdmin") ?? false;
  runApp( MyApp(isAdmin: isAdmin, isLoggedIn:isLoggedIn));
}

class MyApp extends StatelessWidget {
 final bool isLoggedIn, isAdmin ;

   MyApp({super.key,required this.isAdmin,required this.isLoggedIn});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        "/signup":(context)=> Signup(),
        "/products":(context)=>  Products(),
        "/add":(context)=> (isLoggedIn && isAdmin) ? Addproduct(): Login(),
        "/login":(context)=>Login(),
      },
    );
  }
}
