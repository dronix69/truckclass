<?php


use App\Http\Controllers\PracticePrintController;
use Illuminate\Support\Facades\Route;

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', function () {
    return redirect('/admin/login');
});

// routes/web.php
Route::get('/practice/{practice}/print', [PracticePrintController::class, 'print'])
    ->name('practice.print');