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

ArrayList Cars = new ArrayList();
Cars.Add("Revo");
Cars.Add("Camery");
Cars.Add("Civic");
Cars.Add("Elantra");
Cars.Add("Mehran");
Cars.Add(24007);
Cars.Add(.70f);

//Console.WriteLine(Cars.Count);
Console.WriteLine(Cars.Contains("Mehran"));
//Cars.RemoveAt(3);
//Cars.Remove("Revo");
Cars.RemoveRange(5, 2);



foreach(var car in Cars)
{
    Console.WriteLine(car);
}





































































































//Non Generic collection


















































































