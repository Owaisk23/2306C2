import 'package:demo/FirstScreen.dart';
import 'package:demo/addproduct.dart';
import 'package:demo/products.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:demo/firebase_options.dart';
import 'package:flutter/material.dart';

void main()async {

  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
   runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Products(),
    ),
  );
}

