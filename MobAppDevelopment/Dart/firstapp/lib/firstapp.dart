import 'dart:io';


int addNumbers(int a, int b) {
  return a + b;
}



void main() {
  // print("Hello World");
  print("Welcome to Dart Programming");

  // stdout.write("Enter your firstname: ");
  // stdout.write("Enter your lastname: ");

  //Variables datatypes
  // var carName = "Toyota";
  // const carYear = 2009;
  // final carModel = "Corolla";
  // dynamic carPrice = 1000000;
  // stdout.write("Car Name: $carName\n");
  // stdout.write("Car Year: $carYear\n");
  // stdout.write("Car Model: $carModel\n");
  // stdout.write("Car Price: $carPrice\n");
  // //Numeric values
  // //both positive and negative values
  // int age = 20;
  // //floating values ya point values
  // double height = 5.6;
  // //contain both point and whole numbs
  // num salary = 100;

  // //String values
  // String name = "Owais Ahmed Khan";

  // print("My name is $name");
  // print("My age is $age");
  // print("My height is $height");
  // print("My salary is $salary");

  // //Boolean values
  // bool isAlive = true;
  // print("Am I alive? $isAlive");

  // //Conditional Statements
  // // if else
  // stdout.write("Enter your age: ");
  // int driverAge = int.parse(stdin.readLineSync()!);


  // if (driverAge >= 18) {
  //   print("You are allowed to drive");
  // } else {
  //   print("You are not allowed to drive");
  // }


  // //calling function
  // int result = addNumbers(10, 20);
  // print("Result: $result");

  //Collections
  //List

  List<String> names = ["Owais", "Ahmed", "Khan", "Ammad", "Ali"];
  //ordered collection of items or elements
  print(names);
  print(names[3]);
  print(names.length);
  print(names.hashCode);
  
  names.add("Zain");
  print(names);
  names.remove("Ali");
  print(names);
  names.removeAt(2);
  print(names);
  names.insert(2, "Hanzala");
  print(names);

  //update item
  names[0]  = "Ashar";
  print(names);


  //Set
  Set<String> countries = {"Pakistan", "India", "China", "USA", "Pakistan"};
  //their is no concept of index in set
  print(countries);

  //add
  countries.add("UK");
  print(countries);

  //remove
  countries.remove("China");
  print(countries);
  

  //Map
  Map<String, String> person = {
    "name": "Owais",
    "age": "20",
    "city": "Karachi"
  };

  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["city"]);

  //add
  person["country"] = "Pakistan";
  person["profession"] = "Software Engineer";
  print(person);

  //remove
  person.remove("age");
  print(person);
  //update
  person["name"] = "Ali";
  print(person);
  //clear 
  person.clear();
  print(person);

}
