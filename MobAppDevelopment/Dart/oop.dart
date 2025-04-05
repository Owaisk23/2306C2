import 'dart:io';
class Car{
  //variables
  String? carBrand,carName, carModel, carColor;
  //default constructor
  Car(String carBrand, String carName, String carModel, String carColor){
    this.carBrand = carBrand;
    this.carName = carName;
    this.carModel = carModel;
    this.carColor = carColor;
  }
  //named constructor
  Car.carWithoutColor(String carBrand, String carName, String carModel){
    this.carBrand = carBrand;
    this.carName = carName;
    this.carModel = carModel;
  }
  
  //methods ya functions
  void carDetails(){
    print("Car Brand: $carBrand");
    print("Car Name: $carName");
    print("Car Model: $carModel");
    print("Car Color: $carColor");
  }
}

void main(){
  print("Object Oriented Programming in Dart");

  //creating object of class Car
//   Car        car1 = Car("Toyota", "Corolla", "2023", "Red");
// //className  objectName = constructorName(parameters);
//   // car1.carBrand = "Toyota";
//   // car1.carName = "Corolla";
//   // car1.carModel = "2023";
//   // car1.carColor = "Red";
//   car1.carDetails();

  Car mycar = Car.carWithoutColor("Honda", "Accord", "2004");
  mycar.carDetails();

}