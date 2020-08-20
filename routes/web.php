<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/employee', 'EmployeeController@index')->name('employee');
Route::get('/check-in', 'EmployeeController@check_in')->name('check-in');
Route::get('/check-out', 'EmployeeController@check_out')->name('check-out');

//admin routes
Route::get('/admin', 'AdminController@index')->name('admin');

Route::get('/admin/register-employee', 'RegisterEmployee@showRegistrationForm')->name('register-employee');
Route::get('/admin/report', 'AdminController@report')->name('report');

