// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, In C# First Class!!");

//string firstName = "Abdullah";
//string lastName = "Nasir";

//Console.WriteLine("Hello, Welcome in our company Mr. " + firstName + " " + lastName);

// DATATYPES
//byte age = 23;

//short salary = 27000;

//int number = 7432;

//long largeNum  = 134614612612461L;

//float marks = 77.21F;

//double dNum = 125.992D;

//decimal deciNumber = 8009.123M;

//// string datatypes

//char grade = 'B';

//string address = "North Nazimabad KHI";

//bool isValid = true;

//Console.WriteLine("Age is: " + age + " Salary is: " + salary + " Number is: " + number +
//    " Large Number is: " + largeNum + " Marks is: " + marks + " dNumber is: " + dNum +
//    " DeciNum is: " + deciNumber + " Grade is: " + grade + " Address is: " + address +
//    " isValid is: " + isValid);

// Arithematic Operators

//Console.WriteLine(70 + 20);
//Console.WriteLine(70 - 20);
//Console.WriteLine(70 * 20);
//Console.WriteLine(70 / 20);
//Console.WriteLine(70 % 20);

// Assignment Operator

//int number = 7;

//Console.WriteLine(number += 2); //number = number + 2 == 9
//Console.WriteLine(number -= 2); //number = number - 2 == 5
//Console.WriteLine(number *= 2); //number = number * 2 == 14
//Console.WriteLine(number /= 2); //number = number / 2 == 9

// Comparsion Operators (True OR false)

//int a = 50; int b = 70;

//Console.WriteLine(a == b); //F
//Console.WriteLine(a != b); //T
//Console.WriteLine(a > b); //F
//Console.WriteLine(a < b); //T
//Console.WriteLine(a >= b); //F
//Console.WriteLine(a <= b); //T

//LOGICAL Operator (AND &&, OR ||, NOT !)

//int a = 35, b = 75;

////AND OPERATOR: T  T = T

//Console.WriteLine(a >= b && a == b); // F
//Console.WriteLine(a <= b && a < b); // T

////OR OPERATOR: F  F = F

//Console.WriteLine(a <= b || a == b); //T

//// NOT !

//Console.WriteLine(!(a == b)); //T

// Conditional Statements

//using System;
//using System.Runtime.InteropServices.Marshalling;
//Console.WriteLine("Enter Salary...");

//int salary = Int32.Parse(Console.ReadLine());

//if(salary > 50000 && !(salary >= 80000))
//{
//    Console.WriteLine("Good Salary..");
//}
//else if(salary < 50000)
//{
//    Console.WriteLine("Do you get fuel Allounce??");
//    string answer = Console.ReadLine();

//    answer = answer.ToLower(); // yes or y

//    if (answer == "yes" || answer == "y")
//    {
//        Console.WriteLine("Sounds Good!");
//    }
//    else if (answer == "no" || answer == "n") 
//    {
//        Console.WriteLine("Try to switch your job...");
//    }
//    else
//    {
//        Console.WriteLine("Please enter yes or no");
//    }
//}
//else
//{
//    Console.WriteLine("Great!! MASHALLAH");
//}

// SWITCH CASE 
//Console.WriteLine("Enter number for days from 1 to 7:");
//int number = Convert.ToInt32(Console.ReadLine());

//switch (number)
//{
//    case 1:
//        Console.WriteLine("Monday");
//        break;
//    case 2:
//        Console.WriteLine("Tuesday");
//        break;
//    case 3:
//        Console.WriteLine("Wednesday");
//        break;
//    case 4:
//        Console.WriteLine("Thursday");
//        break;
//    case 5:
//        Console.WriteLine("Friday");
//        break;
//    case 6:
//        Console.WriteLine("Saturday");
//        break;
//    case 7:
//        Console.WriteLine("Sunday");
//        break;
//}

//string interpolation
//int a = 356;

//Console.WriteLine($"This is string interpolation {a * 2}");

//loops
//for loop

//for(int i = 0; i <= 50; i++)
//{
//    Console.WriteLine(i);
//}

//for(int i = 20; i > 0; i--)
//{
//    Console.WriteLine(i);
//}

//odd number
//for(int i = 1; i <= 101; i++)
//{
//    if (i%2 != 0)
//    {
//        Console.WriteLine(i);
//    }
//}

// PRIME NUMBER EXAMPLE

//int num, temp = 0;

//Console.WriteLine("Enter any number");

//num = Int32.Parse(Console.ReadLine());

//for (int i = 2; i <= num / 2; i++)
//{
//    if (num % i == 0)
//    {
//        temp++;
//        break;
//    }
//}
//if (temp == 0 && num != 1)
//{
//    Console.WriteLine($"{num} is a Prime Number");
//}
//else
//{
//    Console.WriteLine($"{num} is not Prime Number");
//}

// WHILE LOOP

//int k = 3;

//while(k < 23)
//{
//    Console.WriteLine("K");
//    k++;
//}

// Do While Loop

//int j = 23;

//do
//{
//    Console.WriteLine("J");
//    j++;
//} while (j < 23);

// EVEN ODD EXAMPLE 
//int num;
//char ans;
//do
//{
//    Console.WriteLine("Enter any number");
//    num = Convert.ToInt32(Console.ReadLine());

//    if (num % 2 == 0)
//    {
//        Console.WriteLine("Even Number");
//    }
//    else
//    {
//        Console.WriteLine("Odd Number");
//    }

//    Console.WriteLine("Do you want to continue?? Press Y");
//    ans = Convert.ToChar(Console.ReadLine());

//} while (ans == 'Y' || ans == 'y');

// Arrays with fixed size

//int[] numbers = new int[6];

//numbers[0] = 2;
//numbers[1] = 4;
//numbers[2] = 6;
//numbers[3] = 8;
//numbers[4] = 7;
//numbers[5] = 11;

//Console.WriteLine(numbers[3]);

//Console.WriteLine(numbers[6]);

//int[] itemPrice = { 110, 68, 77, 90, 88 };

////foreach
//foreach(int item in itemPrice)
//{
//    Console.WriteLine(item);
//}

//string[] countries = { "Pakistan", "India", "Iran", "Iraq", "China", "Pakistan", "Dubai", "Afg", "Pakistan" };

//Array.Sort(countries);
//Array.Reverse(countries);

//foreach(string country in countries)
//{
//    Console.WriteLine(country);
//}

//Console.WriteLine(Array.IndexOf(countries, "Dubai"));
//Console.WriteLine(Array.LastIndexOf(countries, "Pakistan"));

//MultiDimentional Array

//int[,] OldNewPrices =
//{
//    {77, 98},
//    {27, 58},
//    {57, 78},
//    {45, 68},
//    {17, 38}
//};


////Console.WriteLine(OldNewPrices[3, 1]);

//for(int i=0; i < OldNewPrices.GetLength(0); i++)
//{
//    //Console.WriteLine($"Printing {i + 1}");
//    for(int j =0; j < OldNewPrices.GetLength(1); j++)
//    {
//        Console.WriteLine(OldNewPrices[i, j]);
//    }
//}


//C# unintialzed variables by default value is bool = true, int = 0, string = null

//Console.WriteLine(Math.Pow(2, 2));

//JAGGED ARRAY in C# 
//size of sub-array is not fixed.

//string[][] skillSet =
//{
//    new string[6] {"Html",  "CSS", "JS", "Bootstrap", "UIUX", "SEO"},
//    new string[3] {"SQL SERVER", "C#", "Typescript"},
//    new string[2] {"PHP", "LARAVEL"},
//    new string[4] {"Dart", "Flutter", "Agile", "Azure"}
//};

////Console.WriteLine(skillSet[1][2]); //C#

//// var decides datatype on runtime

//for (int i = 0; i < skillSet.Length; i++) // Loop through the outer array
//{
//    for (int j = 0; j < skillSet[i].Length; j++) // Loop through each inner array
//    {
//        Console.WriteLine($"Element at jaggedArray[{i}][{j}] = {skillSet[i][j]}");
//    }
//}

//foreach (var skilss in skillSet)
//{
//    foreach(var skill in skilss)
//    {
//        Console.WriteLine(skill);
//    }
//}


// Functions

// return type funcName() { body }


// No Return No Parameter
//Create Function
//void Greet()
//{
//    Console.WriteLine("Hey! Welcome to our company..");
//}

////Calling Function

//Greet();

//No Return with Parameter
//Create Function
//void Greet(string name)
//{
//    Console.WriteLine($"Hi {name}!! Welcome to our company.");
//}

//////Calling Function
//Greet("Abdullah");
//Greet("Zainab");
//Greet("Basim");
//Greet("Ammad");
//Greet("Hassan");

//Return with No Paramter

//string Greet()
//{
//    return "Hey! Welcome to our company..";
//}

////Greet();

////Console.WriteLine(Greet());

//string messg = Greet();

//Console.WriteLine(messg.ToUpper());

//float stdWeight()
//{
//    return 32.456f;
//}

//float fNum = stdWeight();

//Console.WriteLine(fNum);

//Return with Parameter
// \n to break line
//string empDetails(string empName, byte age)
//{
//    return ($"Employee Name is {empName}. \n Employee Age is {age}");
//}

//string messg = empDetails("Jeetha Laal", 34);

//Console.WriteLine(messg);

//Collections

//Generic Collection
//LIST, STACK, QUEUE, DICTIONARY

using System.Collections;
using System.Linq;

////LIST
//List<string> SuperCars = new List<string>();
//SuperCars.Add("Ferrari");
//SuperCars.Add("Supra");
//SuperCars.Add("Lamborghini");
//SuperCars.Add("Lemo");
//SuperCars.Add("Bughati");



//List<string> Cars = new List<string>();
//Cars.Add("Haval"); //0
////REVO 1
//Cars.Add("Civic"); //2

//Cars.Add("Carolla"); //3
//Cars.Add("BMW"); //4
//Cars.Add("Sportage"); //5

//Console.WriteLine(Cars.Contains("Revo"));
//Cars.Insert(1, "Revo");


//Cars.AddRange(SuperCars);
//Cars.RemoveRange(1, 5);


//Console.WriteLine(Cars.Contains("Revo"));

//Console.WriteLine(Cars[2]);
//Cars.Clear(); 


//Cars.RemoveAt(3);

//Cars.Remove("BMW");
//foreach (var car in Cars)
//{
//    Console.WriteLine(car);
//}

// QUEUE (First In First Out: FIFO)

//Queue<string> stdNames = new Queue<string>();
//stdNames.Enqueue("Aqsa");
//stdNames.Enqueue("Zainab");
//stdNames.Enqueue("Ahsan");
//stdNames.Enqueue("Abdullah");
//stdNames.Enqueue("Hanzala");
//stdNames.Enqueue("Hassan");

////stdNames.Dequeue(); //Aqsa
////stdNames.Dequeue(); //Zainab
////stdNames.Dequeue(); //Ahsan
////stdNames.Dequeue(); //Abdullah

//stdNames.Clear();

//foreach (string name in stdNames)
//{
//    Console.WriteLine(name);
//}

//STACK LIFO(Last In First Out)
//Stack<string> stdNames = new Stack<string>();
//stdNames.Push("Ammad");
//stdNames.Push("Basim");
//stdNames.Push("Abdullah");
//stdNames.Push("Hassan");
//stdNames.Push("Hanzala");
//stdNames.Push("Ahsan");
//stdNames.Push("Aqsa");
//stdNames.Push("Zainab");

//stdNames.Pop();//Zainab
//stdNames.Pop();//Aqsa
//stdNames.Pop();//Ahsan
//stdNames.Pop();//Hanzala

//stdNames.Clear();

//foreach(string name in stdNames)
//{
//    Console.WriteLine(name);
//}

//Dictionary(Generic)
//Dictionary<string, string> employee = new Dictionary<string, string>();
//employee.Add("empName", "Ammad Ali");
//employee.Add("empEmail", "ammad@gmail.com");
//employee.Add("empPass", "Pakistan555");
//employee.Add("empRole", "Admin");
//employee.Add("empImg", "ammadpic.jpg");

////Console.WriteLine(employee["empRole"]);
////employee.Remove("empImg");

////Console.WriteLine(employee["empEmail"]);

//foreach(var item in employee)
//{
//    string[] test = (item.ToString()).Split(',');
//    //string key = test[0];
//    //string value = test[1];
//    string key = test[0].Trim('['); //[
//    string value = test[1].Trim(']'); //]
//    //Console.WriteLine(key);
//    //Console.WriteLine(value);
//    //Console.WriteLine(item);

//    Console.WriteLine($"The employee has key propety:{key} and value property is:{value}");
//    //Console.WriteLine(test[0]);
//}

//Hashtables(Non-Generic Collection && No fixed datatype)

//Hashtable students = new Hashtable();
//students.Add("stdname", "Abdullah");
//students.Add("stdMarks", 98);
//students.Add("stdExamStatus", true);
//students.Add("stdImg", "abdullah.jpg");


////Console.WriteLine(students["stdname"]);
////students.Contains("stdMarks");
////students.ContainsValue(98);

//foreach(DictionaryEntry item in students)
//{
//    Console.WriteLine(item.Key + " : " + item.Value);
//}

//Console.WriteLine(students.GetHashCode());

//ArrayList (None-Generic Collection & No fix datatype)

//ArrayList Cars = new ArrayList();
//Cars.Add("Revo");
//Cars.Add("Camery");
//Cars.Add("Civic");
//Cars.Add("Elantra");
//Cars.Add("Mehran");
//Cars.Add(24007);
//Cars.Add(.70f);

////Console.WriteLine(Cars.Count);
//Console.WriteLine(Cars.Contains("Mehran"));
////Cars.RemoveAt(3);
////Cars.Remove("Revo");
//Cars.RemoveRange(5, 2);



//foreach(var car in Cars)
//{
//    Console.WriteLine(car);
//}



//String Methods

//string test = """{ "name": "John Doe"}""";

//using System.Collections;

//string test = "we are  Learnnig \"C#\"";
////Console.WriteLine(test);
//Console.WriteLine(test.Replace("Learnnig", "Mastering"));
//Console.WriteLine(test.Replace("C#", "Java"));

//string email = "hdkjhdkjhkhf";
//int age = 75;

//login start

//login end


//CODING Best Practices
// Indentation (Readable by using spaces and new lines) 
// Comments 
// Meaningful identifiers (variable names)
// errors (exception handling) 
//less repeatation

//OOP
//Objects and Classes

//Aeroplane     Boeing707 = new Aeroplane();//default constructor
////className   ObjName     new Constructor 

//Boeing707.Name = "Boeing 707";
//Boeing707.takeOff();
//Console.WriteLine(Boeing707.AirLine);

//Aeroplane f16 = new Aeroplane("PAF");
//Console.WriteLine(f16.AirLine);
//f16.takeOff();

//Aeroplane f17 = new Aeroplane("PAF", "F-17 Thunder", 2, 2, "8500hp");
//f17.takeOff();
//f17.land();

//public class Aeroplane
//{
//    //properties
//    public string? AirLine;
//    public string? Name;
//    public int Seats;
//    public int Crew;
//    public string? Power;

//    //Contstructor
//    public Aeroplane()
//    {
//        this.AirLine = "Not specified";
//        this.Name = "unknown";
//        this.Seats = 0;
//        this.Crew = 0;
//        this.Power = null;
//    }

//    public Aeroplane(string AirLine)
//    {
//        this.AirLine = AirLine;
//        this.Name = "unknown";
//        this.Seats = 0;
//        this.Crew = 0;
//        this.Power = null;
//    }


//    //    //Paremeterized constructor (Overloading)
//    public Aeroplane(string ALine, string name, int seat, int crew, string pow)
//    {
//        this.AirLine = ALine;
//        this.Name = name;
//        this.Seats = seat;
//        this.Crew = crew;
//        this.Power = pow;
//    }

//    //methods
//    public void takeOff()
//    {
//        Console.WriteLine($"{this.Name} is taking off. Best Wishes..!");
//    }
//    public void land()
//    {
//        Console.WriteLine($"{this.Name} is Landing at the 4th runway..! ");
//    }

//}

//OOP (OBJECT ORIENTED PROGRAMMING)
//it is an approach to code cleaner and better.
//readable
//reusable
//optimize
//proper structure of the code is maintained.

//Main Pillars of OOP

//1. Interitance
// i . Single level inheritance  Vehicle -> Car
// ii . Multi level inheritance  Vehicle -> Car -> Ecar
// iii. Heirarchical inheritance Vehicle ->Car , Vehicle-> Bike
// iv. Multiple inheritance  
// v. Hybrid inheritance    Vehicle -> CAR , Vehicle -> Car -> Ecar, Car-> Ecar

//2. Polymorphism
// Method Overloading
// Method Overriding
//3. Abstraction
//4. Encapsulation

//Inheritance
//Vehicle abc = new Vehicle("AAZ-789", "Metallic grey");
//abc.Run();

Car mercedez = new Car("TZ-8908", "Black", "Mercedez", "Benz C-Class", 20000000);
//mercedez.Run();
mercedez.Run(500);

// Parent class | Base Class | Super Class
public class Vehicle
{
    public string regNo;
    public string color;

    public Vehicle(string regno, string color)
    {
        this.regNo = regno;
        this.color = color;
    }
    public void Run()
    {
        Console.WriteLine($"{this.regNo} vehicle started running");
    }
}
//// Child class | Derived Class | Sub Class
public class Car : Vehicle
{

    public string brand;
    public string model;
    public int price;

    public Car(string regno, string color, string brand, string model, int price) : base(regno, color)
    {
        this.brand = brand;
        this.model = model;
        this.price = price;
    }

    //method overriding
    public void Run()
    {
        Console.WriteLine($"{this.brand} {this.model} {this.regNo} started running");
    }
    //method overloading
    public void Run(int speed)
    {
        Console.WriteLine($"{this.brand} {this.model} {this.regNo} started running at {speed} MPH.");
    }

}
//Vehicle abc = new Vehicle("AAZ-789", "Metallic grey");
//abc.Run();

//Car MarkX = new Car("2008", "Black", "Toyota", "Mark X", 3500000);
//Car a = new Car("2008", "Black", "Toyota", "Mark X", 3500000);
//Car b = new Car("2008", "Black", "Toyota", "Mark X", 3500000);
//Car bv = new Car("2008", "Black", "Toyota", "Mark X", 3500000);
//Car g = new Car("2008", "Black", "Toyota", "Mark X", 3500000);
//Car MadrkX = new Car("2008", "Black", "Toyota", "Mark X", 3500000);


//MarkX.Run();
//MarkX.Run(300);

//Math abc = new Math();
//abc.Sqrt(49);

//static function examples:
//Math.Sqrt(49);
//Console.WriteLine("dkf");

//Console.WriteLine(Car.totalCars);
//Car.paytax();



//abstract public class Vehicle
//{
//    public string regNo;
//    public string color;

//    public static int totalCars = 0;
//    public static int totalAmount = 0;
//    public static int payingCars = 0;
//    public static int nonPayingCars = 0;
//    public virtual void Run()
//    {
//        Console.WriteLine($"{this.regNo} vehicle started running");

//    }
//}
//abstract public class Car : Vehicle
//{
//    public string brand;
//    public string model;
//    public int price;
//    public int basePrice = 2;
//    public static int carCount = 0;
//    public Car(string regno, string color, string brand, string model, int price)
//    {
//        this.regNo = regno;
//        this.color = color;
//        this.brand = brand;
//        this.model = model;
//        this.price = price;
//        totalCars++;
//        carCount++;
//    }
//    public static void paytax()
//    {
//        Console.WriteLine("Boom..! the race has begun. May the best be winner.");
//        //payingCars++;
//        //totalAmount += this.basePrice;

//    }
//    //method overriding
//    public void passWithoutPaying()
//    {
//        Console.WriteLine($"{this.brand} {this.model} {this.regNo} started running");
//        nonPayingCars++;
//    }

//    //method overloading
//    public void Run(int speed)
//    {
//        Console.WriteLine($"{this.brand} {this.model} {this.regNo} started running at {speed} MPH.");
//    }

//}

////Interfaces
//FrontEndDeveloper ashar = new FrontEndDeveloper();
//ashar.ComplexDesign("Ashar Ahmed");
//ashar.SimpleDesign();

//FullStackDeveloper usama = new FullStackDeveloper();
//usama.SimpleDesign();
//usama.ComplexAPIs();

//interface topics
//{

//Interfaces,
//        Static,
//       Abstract
////} 
//interface FrontEndDevelopment
//{
//    public void SimpleDesign();
//    public void ComplexDesign(string name);

//}


//interface BackEndDevelopment
//{
//    public void SimpleCrud();
//    public void ComplexAPIs();
//    public void Authentication();

//}

//public class FrontEndDeveloper : FrontEndDevelopment
//{
//    //method implementation
//    public void SimpleDesign()
//    {
//        Console.WriteLine("We will provide you simple and responsive design using HTML, CSS and JS.");
//    }
//    public void ComplexDesign(string name)
//    {
//        Console.WriteLine($"Hi this is {name}, We will provide you animated and responsive design using HTML, CSS, JS, React, " +
//            $"Nextjs.");
//    }

//}



//Multiple Inheritance
//public class FullStackDeveloper : FrontEndDevelopment, BackEndDevelopment
//{
//    public void SimpleDesign()
//    {
//        Console.WriteLine("We will provide you simple and responsive design using HTML, CSS and JS.");
//    }
//    public void ComplexDesign(string name)
//    {
//        Console.WriteLine($"Hi this is {name}, We will provide you animated and responsive design using HTML, CSS, JS, React, Nextjs.");
//    }
//    public void SimpleCrud()
//    {
//        Console.WriteLine("We will provide you simple crud operations.");
//    }
//    public void ComplexAPIs()
//    {
//        Console.WriteLine($"We will provide you complex APIs.");
//    }
//    public void Authentication()
//    {
//        Console.WriteLine($" We will provide you Authentication.");
//    }
//}

//Access  Modifiers
//1. Public     | anyone can access from any where in the program.
//2. Private    | only owner class can access .
//3. Protected  | only owner class and child class can access .

//Products neckBand = new Products(1500, "Lenovo Neckband" ,"good quality product with extra base and long range connectivity.");
////neckBand.name="Lenovo Neckband";
////neckBand.price;
////neckBand.description;
////Console.WriteLine(neckBand.price);

////neckBand.showPrice();
//neckBand.callShowPrice();

//Gadgets iphone = new Gadgets(230000, "iphone 15 pro max", "acha phone ha", "phones");
//iphone.ShowGadget();

//public class Products
//{
//   public string name;
//   private int price;
//   protected string description;

//    public Products(int price, string name, string description)
//    {
//        this.name = name;
//        this.price = price;
//        this.description = description;
//    }

//    private void showPrice()
//    {
//        Console.WriteLine(this.price);
//    }
//    public void callShowPrice()
//    {
//        this.showPrice();
//    }
//}

//public class Gadgets : Products
//{
//    public string category;

//    public Gadgets(int price, string name, string description, string category) : base (price, name, description)
//    {
//      this.category=category;
//    }

//    public void ShowGadget()
//    {
//        Console.WriteLine(this.name);
//        this.callShowPrice();
//        Console.WriteLine(this.description);
//        Console.WriteLine(this.category);

//    }
//}  

//Delegates
//Math
//Math.Cos()

//Normal Delegate
//MyMaths.MyMathsDelegate Eval = new MyMaths.MyMathsDelegate(MyMaths.Add);
//Eval(4, 8);

//Multicast Delegate

//MyMaths.MyMathsDelegate MultiEval;
// MultiEval = MyMaths.Mul;
//MultiEval(2, 5);

//MultiEval = MyMaths.Div;
//MultiEval(2, 0);

//MultiEval = MyMaths.Sub;
//MultiEval(2, 0);

//MyMaths.Sub(4, 2);
//public class MyMaths
//{
//    public delegate void MyMathsDelegate(double num1, double num2);

//    public static void Add(double a, double b)
//    {
//        Console.WriteLine(a + b);
//    }
//    public static void Sub(double a, int b)
//    {
//        Console.WriteLine(a - b);
//    }

//    public static void Mul(double a, double b)
//    {
//        Console.WriteLine(a * b);
//    }
//    public static void Div(double a, double b)
//    {
//        if(b!=0)
//        Console.WriteLine(a / b);
//        else
//        Console.WriteLine("Can't divide by zero");
//    }
//}


//Shopping.GetItem buy;
//buy = Shopping.GetEatables;
//buy("Jam", 550, "Black current jam with great delight");

//public class Shopping
//{
//    public delegate void GetItem(string name, int price, string description);

//    public static void GetEatables(string name, int price, string desc)
//    {
//        Console.WriteLine("You have bought eatable {0} at Rs. {1} . {2} .",name , price, desc);//placeholders
//    } 
//    public static void GetGadgets(string name, int price, string desc)
//    {
//        Console.WriteLine("You have bought gaddet {0} at Rs. {1} . {2} .",name , price, desc);//placeholders
//    }


//}

//unary operator    a++, a--
//binary operator   a + b; a - b
//Ternary operator  (condition) ? "hi" : "bye" // 3 operands

//string greet = (10 < 10) ? "hi" : "bye";

//Console.WriteLine(greet);

//getters and setters

//Animal cat = new Animal();
//cat.Name = "Tom";
//cat.Age = 40;
//Console.WriteLine(cat.Age);


//public class Animal
//{
//    public string? Name { get; set; } //auto complete properties
//    private int age;


//    public int Age
//    {
//        get { return age; }

//        set
//        {

//            if (value < 10)
//            {

//                age = value;
//            }
//            else
//            {

//            }
//        }
//    }
//}



//enums
//Implicit typecasting 
//Explicit typecasting 


//Console.WriteLine($"{pakBatters.Fakhar} has jersey no {(int)pakBatters.Fakhar}");

//enum pakBatters
//{
//    Babar = 56,
//    Rizwan = 33,
//    Fakhar = 45,
//    Imad = 75
//}





//namespaces : a collection of related classes and sub namespaces.

//using System;
//using System.Collections;
//using TaxMangementSytem;
//using Indexers;


//Tax tolltax = new Tax();

//tolltax.amount = 5000;

//Vehicle vehicle = new Vehicle();
//vehicle.regNum = 4545;



//Indexers : when we want our object to behave like an array we implement indexers.

//fruits basket = new fruits();
//basket[0] = "Langra";
//basket[1] = "Chaunsa";
//basket[2] = "Daseri";
//basket[3] = "Sindhri";
//basket[4] = "Anwer Ritol";
//basket[5] = "ahbfdk";
//basket[6] = "ahbfdk";

//Console.WriteLine(basket[3]);

//foreach (string item in basket.fruitNames)
//{
//    Console.WriteLine(item);
//}

//Records 

//User ahmed = new User();
//ahmed.id = 1;
//ahmed.name = "Ahmed Hassan";


//User haris = new User();
//haris.id = 1;
//haris.name = "Ahmed Hassan";


//Console.WriteLine(ahmed);
//Console.WriteLine(ahmed == haris);

//User1 talha = new User1();
//talha.id = 2;
//talha.name = "Mirza talha";

//User1 abdullah = new User1();
//abdullah.id = 2;
//abdullah.name = "Mirza talha";

//Console.WriteLine(talha);
//Console.WriteLine(talha == abdullah);

//public class User
//{
//    public int id { get; set; }
//    public string? name { get; set; }
//}

//public record User1
//{
//    public int id { get; set; }
//    public string name { get; set; }
//}


//events

//myCar Civic = new myCar();
//Civic.speedUp += new myCar.speedCar(myCar.carMoved);
//Civic.drive();


//public class myCar
//{
//    public delegate void speedCar();
//    public event speedCar speedUp;
//    public int speed = 0;

//    public void drive()
//    {
//        for (int i = 1; i < 100; i++)
//        {
//            if (i > 50)
//            {
//                speedUp();
//            }
//            Console.WriteLine($"the car is moving at {i} mph");
//            System.Threading.Thread.Sleep(200);


//        }
//    }
//    public static void carMoved()
//    {
//        Console.WriteLine("the speed limit has exceeded");
//    }


//}









































































