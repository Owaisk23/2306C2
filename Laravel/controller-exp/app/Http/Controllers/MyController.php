<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyController extends Controller
{
    public function index(){
        // return "Hello from myController";
        
        $name = "Ammad";
        // $designations = "MERN Stack Developer";
        // Using Compact method
        // return view("welcome", compact("name", "designations"));




        // Using associative array
        // return view("welcome", array(
        //     'name' => $name,
        //     'designation' => $designations, 
        // ));

        // Using with method
        return view("welcome")->with('name');

    }

    public function about(){
        return view("about");
    }

}
