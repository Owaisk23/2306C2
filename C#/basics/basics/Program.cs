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
using System.Runtime.InteropServices.Marshalling;
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



















































































































