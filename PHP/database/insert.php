<?php
require("connection.php");

if(isset($_POST['stddata'])){
$stdname = $_POST['sname'];
$stdcontact = $_POST['snum'];
$stdcity = $_POST['scity'];

$insert = "INSERT INTO `student`(`name`, `contact`, `city`) values ('$stdname', '$stdcontact', '$stdcity');";

$result = mysqli_query($connection, $insert) or die ("Failed to insert query");

if($result){

    echo "<script>alert('Student details added succesfully...')</script>";

}
else{

    echo "<script>alert('Failed to insert data.. ')</script>";

}



}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
</head>
<body>
    <div class="container">
        <h1 class="text-center">Student Detail's Form</h1>
    
        <form action="" method="post" class="form-group">
            <input type="text" name="sname" class="form-control my-2" placeholder="Enter Student Name">
            <input type="number" name="snum" class="form-control my-2" placeholder="Enter Student Number">
            <input type="text" name="scity" class="form-control my-2" placeholder="Enter Student City">
            <input type="submit" value="Submit Form" name="stddata" class="form-control btn btn-primary my-2" >
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>











