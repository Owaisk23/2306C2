<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        // Indexed Arrays
        $students = array("Yayha", "Wajeeha", "Affan", "Ayesha", "Rubab", "Afzal", "Haris", "Ebad");
                        //index= key   value="name"
        // echo "<pre>";
        // print_r($students);
        // echo "</pre>";

        // foreach($students as $key => $value){
        //     echo "$key: $value <br>";
        // }

        // echo $students[4];

        // Associative Arrays
        $employee = [
            "name" => "Ammad",
            "age" => 23,
            "jobTitle" => "MERN stack developer",
            "experience" => "3 years"
        ];

        // echo "<pre>";
        // print_r($employee);
        // echo "</pre>";

        // foreach($employee as $key => $value){
        //         echo "$key: $value <br>";
        // }
    
        // Multidimensional Arrays
        // $result = [
        //     ["Owais" ,78 ],
        //     // 00      01
        //     ["Haris" ,88],
        //     // 10     11
        //     ["Ebad" ,98],
        //     // 20    21
        //     ["Afzal" ,68]
        //     // 30     31
        // ];

        // echo "<pre>";
        // print_r($result);
        // echo "</pre>";

        // echo $result[0][0];

        // echo "<table border=2 cellspacing=3px>
        // <h1>Students Data Result</h1>   
        // <tr>
        //     <th>Name</th>
        //     <th>Percentage</th>
        //     <th>Percentage</th>
        // </tr>";

        // foreach($result as $key1 => $value1){
        //     echo "<tr>";
        //         foreach($value1 as $key2 => $value2){
        //             echo "<td>$value2</td>";
        //         }
        //     echo "</tr>";
        // }


        // echo "</table>";

        // Multidimenstional associative array
        
        $marks = [
            "Abdullah" => ["HTML" => 88, "CSS" => 78, "JS" => 100],
            "Basim" => ["HTML" => 78, "CSS" => 99, "JS" => 82],
            "Ammad" => ["HTML" => 90, "CSS" => 67, "JS" => 99],
            "Hafeez" => ["HTML" => 99, "CSS" => 70, "JS" => 88],
            "Hassan" => ["HTML" => 87, "CSS" => 94, "JS" => 81]
        ];

        // echo $marks["Ammad"]["JS"];


        echo "<pre>";
        print_r($marks);
        echo "</pre>";

    // StdName | HTML | CSS | JS
    // Abdullah  88      78   100



?>





</body>
</html>