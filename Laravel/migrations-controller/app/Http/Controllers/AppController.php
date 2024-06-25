<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AppController extends Controller
{
    public function index(){
        // $name = "Owais Ahmed Khan";
        // $designation = "Software Developer";
        // $jobtiming = "nine to five";
        
        // // using compact method
        // return view("welcome", compact("name", "designation", "jobtiming"));
    
        // using associative array method
        // return view("welcome", array(
        //     "name" => $name,
        //     "designation" => $designation,
        //     "jobtiming" => $jobtiming
        // ));
    

        // using with method
            // return view("welcome")->with('name')->with('designation')->with('jobtiming');
    

        // with single variable method
        $data['name'] = "Owais Ahmed Khan";
        $data['designation'] = "Software Developer";
        $data['city'] = "Karachi";
            return view("welcome", $data);


    }

    public function about(){
        return view("about");
    }
}
