<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\MyController;


Route::get('/', [MyController::class, 'index']);
Route::get('/about', [MyController::class, 'about']);


// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/about/{paramname?}', function () {
//     return view('about');
// });

// Route::view('/services', 'service');