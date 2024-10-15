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

using System;
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
int a = 356;

Console.WriteLine($"This is string interpolation {a * 2}");

















