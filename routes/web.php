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

// Route::get('/', function () {
//     return view('welcome');
// });

//Route::group(['middleware' =>'auth:web'], function () {
//Route::domain('{subDomain}.subdomain-project.test')->group(function () {
    // Route::get('/', 'profileController@show')->name('profile');
    // });

//});
Auth::routes();

// Route::get('/', function() {
//      $users = \App\User::all();
//     return view('profile.index')->with('users', $users);
// })->name('root');



Route::get('/home', 'HomeController@index')->name('home');

// Route::domain('{subDomain}.subdomain-project.test')->group(function () {

    
//     Route::get('getSPIDFromSubDomain', 'ReservationController@getSPIDFromSubDomain');

  
// });


Route::domain('{subDomain}.mydomain.com')->group(function () {

    
    Route::get('/', 'ReservationController@getSPIDFromSubDomain')->name('getSPIDFromSubDomain');
});




