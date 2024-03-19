<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    // BASICS
    // Variable declare $varName
    // $num = -23;

    // $name = "Owais";
    // $Name = "Owais Ahmed";

    // print($name);
    // print($Name);
    // print($num);

    // echo "<h1>This is my full name $Name</h1>";

    // concatenation dot(.)

    // echo "<h1>Sum of two numbers are ".($num + 23)."</h1>";

    // number methods: abs, floor, ceil, round, sqrt
    // echo abs($num); //23
    // echo ceil(9.2); //10
    // echo floor(11.7); //11
    // echo round(9.5); //10
    // echo round(9.4); //9
    // echo sqrt(625); //25

    //strng methods: ucwords, strrev
    // $str = "owais ahmed khan";

    // echo $str;
    // echo ucwords($str);
    // echo strrev($str);
    // echo str_word_count($str);

    // Datatypes in PHP
    // Number
    // $num1 = 45; //int
    // $num2 = 32.5; //float
    // $num3 = 1.76534783228472312; //double

    // string

    // $str1 = "Php class in 2306C2 batch"; //string

    // boolean: true ya false

    // $userResponse = true;
    // $isValid = false;


    // echo "Welcome to 2nd class!";

    // ARRAYS
    // $students = array("Yayha", "Wajeeha", "Affan", "Ayesha", "Rubab");
    //                 //  0         1          2             
    // echo $students[1];

    // functions
    // declaration
    // function add(){
    //     echo 23 + 77;
    // }

    // // calling func
    // add();

    // functions with parameters
    // function add($a=34, $b=55){
    //     echo "Sum Result is: ".$a + $b;
    // }

    // // calling
    // add();

    // // function with return type and arguments
    // function add($a=0, $b=0){
    //     return "Addition result is: ".$a + $b."<br>";
    // }

    // // calling func with arguments
    // $c = add(45, 66);

    // echo $c;
    // // function with return type and arguments
    // function sub($a=0, $b=0){
    //     return "Subtraction result is: ".$a - $b;
    // }

    // // calling func with arguments
    // $d = sub(45, 66);

    // echo $d;

    // Conditional Statements

    // $age = 17;
    
    // if($age > 18){
    //     echo "You can vote";
    // }else{
    //     echo "You can't vote"; 
    // }

    // if($age > 18){
    //     echo "You can drive";
    // }elseif ($age == 18){
    //     echo '<script>alert("You can drive but get your license first!")</script>';
    // }else{
    //     echo "You can't drive"; 
    // }

    // switch case

    // switch(key) {
    //     case x:
    //       // code block
    //       break;
    //     case y:
    //       // code block
    //       break;
    //     default:
    //       // code block
    //   }

    $day = "Monday";
    
    switch($day) {
        case "Monday":
            echo "weekday";
            break;
        case "Tuesday":
            echo "weekday";
            break;
        case "Wednesday":
            echo "weekday";
            break;
        case "Thursday":
            echo "weekday";
            break;
        case "Friday":
            echo "weekday";
            break;
        case "Saturday":
            echo "weekend";
            break;
        case "Sunday":
            echo "weekend";
            break;

        default:
            echo "Spelling check kro yar!";
    }

    






























?>
</body>
</html>