import 'dart:io';

void main() {
  // print("Hello World");
  print("Welcome to Dart Programming");

  // stdout.write("Enter your firstname: ");
  // stdout.write("Enter your lastname: ");

  //Variables datatypes
  var carName = "Toyota";
  const carYear = 2009;
  final carModel = "Corolla";
  dynamic carPrice = 1000000;
  stdout.write("Car Name: $carName\n");
  stdout.write("Car Year: $carYear\n");
  stdout.write("Car Model: $carModel\n");
  stdout.write("Car Price: $carPrice\n");
  //Numeric values
  //both positive and negative values
  int age = 20;
  //floating values ya point values
  double height = 5.6;
  //contain both point and whole numbs
  num salary = 100;

  //String values
  String name = "Owais Ahmed Khan";

  print("My name is $name");
  print("My age is $age");
  print("My height is $height");
  print("My salary is $salary");

  //Boolean values
  bool isAlive = true;
  print("Am I alive? $isAlive");

  //Conditional Statements
  // if else
  stdout.write("Enter your age: ");
  int driverAge = int.parse(stdin.readLineSync()!);


  if (driverAge >= 18) {
    print("You are allowed to drive");
  } else {
    print("You are not allowed to drive");
  }










}
