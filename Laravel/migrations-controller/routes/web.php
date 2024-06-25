<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\AppController;

// Routes with Contaoller
Route::get('/', [AppController::class, 'index']);
Route::get('/about', [AppController::class, 'about']);

// Route::get('/', function () {
//     return view('welcome');
// });
