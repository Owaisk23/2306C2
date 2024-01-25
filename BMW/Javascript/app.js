// Three ways of printing

// alert("Hello from external")

// document.write("Hello HI external")

// console.log("Hello in JS");


// var fName = "Owais"
// console.log(fName);

// var lastName; //Declaration 
// lastName = "Khan"; //Assigning value to a variable

// console.log(lastName);

// var firstName = "abc"; //string

// console.log("This is a " + typeof(firstName))

// console.log(firstName)

// var age = 23;

// console.log(age);
// console.log("This is a " + typeof(age));

// var a = true;
// var b = false;
// console.log("This is a " + typeof(a))
// console.log(typeof(b))


// Class 2

// Concat

// var fname = 'BAsim';
// var age = 21;

// console.log("MY name is "+fname);
// MY name isOwais

// console.log("Grid assig is not done by him " + fname )
// console.log("Basim age is " + age )

// console.log("Pakistan" + "Zindabad")

// Arithematic Operations

// var num1 = 98;
// console.log("Number 1 is: " + num1);
// var num2 = 55;
// console.log("Number 2 is: " + num2);

    //     55    98 
// var add = num1 + num2;
// var sub = num1 - num2;
// var mul = num1 * num2;
// var divide = num1 / num2;
// var modulus = num1 % num2;
// console.log(add)
// console.log("Addition result is: " + add);
// console.log("Substraction result is: " + sub);
// console.log("Multiplication result is: " + mul);
// console.log("Division result is: " + divide);
// console.log("Remainder result is: " + modulus);


// Precedences

// var exp = 2 + 4 * 6 / 2;
    //   2 + 4 *  3 
    //   2 + 12
    // Expected Outcome: 14

// console.log(exp);

// var exp1 = (2 * 5) - 10 / (2 * 3)
//         10 - 10 / 6
//         10 - 1.66
//         Expected Outcome 8.34

// console.log(exp1);


// Increments & Decrements
// var a = 12;
// var a = ++a; //13
// var a = ++a; //14
// var a = ++a; //15
// var a = ++a; //16
// var a = ++a; //17
// var a = ++a; //18
// var a = ++a; //19
// var a = ++a; //20
// var a = ++a; //21
// var a = ++a; //22
//  console.log(a);



// var x = 2;

// var y = x + ++x + x +  x++ + x;
    // 2 + 3 + 3 + 3 + 4 = 15

// console.log("Expected outcome of x: " + x);
// console.log("Expected outcome of y: " + y);

// var x = 5;

// var y = x + ++x + x++ + --x + x-- + x + ++x + ++x;
//      5 +   6 + 6 +     6 + 6 +   5 +   6 +   7= 47


// console.log("Expected outcome of x: " + x);
// console.log("Expected outcome of y: " + y);


// var a = 2;
// var b = a - a++ + --a + a-- + a;
//      2 - 2   +  2  + 2  +  1= 5

// console.log("Expected outcome of b: " + b) //5
// console.log("Expected outcome of a: " + a) //1


// == vs ===

// var num1 = 2; // number
// var num2 = '2'; // string

// var add = num1 + num2;
// console.log(add); // 22

// var result = num1 == num2; // true
// var result = num1 === num2; //false
// var result = num1 != num2; // false
// var result = num1 !== num2; //true

// console.log("Both numbers are same " + result);

// prompt

// var fname = prompt('Enter your name');
// console.log('Entered NAme is: ' + fname);

// var age = prompt("Enter your age")
// console.log("Entered age is " + age);
// console.log(typeof(age));
// Unary Operator

// var num1 = +prompt("Enter number 1: ")
// var num2 = +prompt("Enter number 2: ")

// var add = num1 + num2;
 
// console.log(typeof(add));

// var Name =  "Maria Aqeel";
// var marks = prompt("Enter your marks", 20);

// if(marks > 50){
//     console.log(Name + " your marks is: " + marks);
// }else{
//     console.log(Name + " sorry you are failed & your marks is: " + marks);
// }


// var marks = +prompt("Enter your marks");

// if(marks > 80)
// {
//     alert("A1 grade");
// }
// else if(marks < 80)
// {
//     alert("B grade");
// }
// else
// {
//     alert("wrong value");
// }


// Nested IF
// if(marks > 80 && marks < 100){
//             alert("Congrats you are passed with A1 grade")
//             if(marks >= 90){
//                 alert('Apki position aye hai..');
//             }else{
//                 alert('Sorry agli bar or mehnat krna..');
//             }
//     }
// else if(marks < 80 && marks > 50){
//             alert("Average Marks grade B")
// }
// else {
//             alert("Failed or Invalid Marks")
// }

// Switch Cases

// syntax

// switch (key) {
//     case value:

//         break;

//     default:
//         break;
// }

// var days = +prompt("Enter number to find day.", 1);

// switch(days){
//     case 1:
//         alert("Monday");
//         break;
//     case 2:
//         alert("Tuesday");
//         break;
//     case 3:
//         alert("Wednesday");
//         break;
//     case 4:
//         alert("Thursday");
//         break;
//     case 5:
//         alert("Friday");
//         break;
//     case 6:
//         alert("Saturday");
//         break;
//     case 7:
//         alert("Sunday");
//         break;
//     default:
//         alert("Holiday");
//         break;      
// }


// LOOPS

//FOR LOOP

// for loop has three statements
// i) initialization --> run only one time before iteration.
// ii) condition --> run before iteration
// iii) expression --> run after iteration

// for (initialization; condition ; expression){
//     code to be executed;
// }

// console.log(1)
// console.log(2)
// console.log(3)
// console.log(1)
// console.log(5)
// console.log(1)
// console.log(12)
// console.log(16)
// console.log(8)
// console.log(9)


// for(var i = 1; i <= 10; i++){
//     console.log(i);
// }

// Table

// var num = +prompt("Enter number of desire table", 2);

// for(var i=1; i <= 10; i++){
//     //        2 x 1 = 2 
//     console.log(num + 'x' + i + '=' + num * i)
// }

//While 

// initilize
// var i = 1;
// //     condition
// while (i<=12) {
//      console.log(i);
// //      expression
//      i++;
// }

// do-while loops

// var i =11;

// do {
//      console.log(i)
//      i++
// } while (i<=1);

// var  std = ["Ali", "Saad", "Usman", "Maria", "Yusra", "Abc","Ali", "Saad", "Usman", "Maria", "Yusra", "Abc"];
// var  std = ["Ali", "Saad", "Usman", "Maria", "Yusra"];
//            0      1        2        3        4

// console.log(std);

// console.log(std[2]);
// console.log(std[1]);
// console.log(std[0]);
// console.log(std[4]);

// for(var i = 0; i < std.length; i++){
//     console.log("Your name is:" + std[i])
// }


// for(var i = 0; i < std.length; i++){
//     console.log(std[i])
// }


// var ages = [23, 76, 55, 12, 45, 54];
// console.log(ages);

// ARRAY METHODS

// var countries = ["Pak", "Bharat", "China", "Afg", "Ban"];

// Push add element at end.
// var updateCountries = countries.push("Sri");

// Remove element at end.
// var updateCountries = countries.pop();


// Remove element at start
// var updateCountries = countries.shift();

// Add element at start
// var updateCountries = countries.unshift("Iran");

// console.log(countries);

// function delaration

// function print(){
//     console.log('Hello in Func')
//     console.log('Umeed hai apko samjh ayega')
//     console.log('Focus rakhiyega samjh ajayega')
// }

// // function calling

// print();
// function add(){
//     console.log(9+16);
// }

// add()


// argrument & parameters
// function add(num1, num2){
//     var sum = num1 + num2;
//     console.log('Addition result is: ' + sum);
// }

// add(45, 90);


// function mul(num1, num2){
//     var mult = num1 * num2
//     console.log('Multiply result is: ' + mult);
// }

// mul(45, 90);

// function sub(num1, num2){
//     var subtract = num1 - num2
//     console.log('Subtract result is: ' + subtract);
// }

// sub(100, 90);

// function div(num1, num2){
//     var division = num1 / num2
//     console.log('Divide result is: ' + division);
// }

// div(180, 90);

// function greet(){
//     alert("Hello, Good Morning")
// }

// function getInput(){
//     var input = prompt("Enter Name")
//     greet();
// }



// getInput();

function greet(){
    alert('hello, good evening!')
}

// BIRTH CALCULATOR










// var Car = {
//     // property name : property value
//     name:"Civic",

//     // name : ["Civic","Alto","Corola"],
//     color: "Blue",
//     price: 50000,
//     makeYear: 2021
// }

// console.log(Car);




// var Student = new Object();

// Student.name = "Abc";
// Student.age = 15;
// Student.course = "BMW";
// Student.gender = "Male";
// console.log(Student);

// document.getElementById("p1").innerHTML = "para inserted using JS";

// document.getElementById("head").innerHTML = "Hello world"

//     // info: function(){
//     //     console.log(this.name,this.color);
//     // }
































































































