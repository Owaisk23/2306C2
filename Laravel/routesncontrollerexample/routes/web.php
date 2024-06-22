<?php

use Illuminate\Support\Facades\Route;

// Controller Route
Route::get('/',[AppController::class, 'index']);


// // base route
// Route::get('/', function () {
//     return view('welcome');
// });

// About Page Route
// Route::get('/about', function () {
//     return view('about');
// });

// another way 
// Route::view('/contact','contact');

// Routes with parameter required
// Route::get('/services/{paramname}', function () {
//     return view('services');
// });

// Routes with Optional parameter 
// Route::get('/services/{servicename?}', function () {
//     return view('services');
// });
