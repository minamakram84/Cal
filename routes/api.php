<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});




Route::get('getServices/{SPID}', 'ReservationController@getServices');
Route::get('getBusinessHours/{calID}', 'ReservationController@getBusinessHours');
Route::get('getBooking/{calID}/{date}', 'ReservationController@getBooking');
Route::post('storeBooking', 'ReservationController@storeBooking');
Route::get('getSPID/{SPID}', 'ReservationController@getSPID');
Route::get('storeServiceProvider', 'ReservationController@storeServiceProvider');
Route::get('getScheduledBookingAll/{SPID}', 'ReservationController@getScheduledBookingAll');

Route::post('updateBooking', 'ReservationController@updateBooking');
Route::post('deleteBooking', 'ReservationController@deleteBooking');

Route::get('getServiceProvider/{SPID}', 'ServiceProviderController@getServiceProvider');
Route::get('getState/{contryID}', 'ServiceProviderController@getState');
Route::post('editServiceProvider', 'ServiceProviderController@editServiceProvider');
Route::post('editBussinessHours', 'ServiceProviderController@editBussinessHours');


Route::get('getAllCustomers/{SPID}', 'CustomerController@getAllCustomers');
Route::post('storeCustomer', 'CustomerController@storeCustomer');
Route::get('getCustomer/{customerID}', 'CustomerController@getCustomer');
Route::post('editCustomer', 'CustomerController@editCustomer');
Route::post('deleteCustomer', 'CustomerController@deleteCustomer');

Route::get('getAllStaff/{SPID}', 'StaffController@getAllStaff');
Route::post('storeStaff', 'StaffController@storeStaff');
Route::get('getStaff/{staffID}/{SPID}', 'StaffController@getStaff');
Route::post('editStaff', 'StaffController@editStaff');
Route::get('getStaffServices/{staffID}/{SPID}', 'StaffController@getStaffServices');
Route::get('deleteStaffService/{staffID}/{SPID}', 'StaffController@deleteStaffService');
Route::get('storeStaffService/{staffID}/{SPID}', 'StaffController@storeStaffService');
Route::get('getWorkHours', 'StaffController@getWorkHours');

Route::post('deleteStaff', 'StaffController@deleteStaff');
Route::post('storeTimeOff', 'StaffController@storeTimeOff');
Route::post('editTimeOff', 'StaffController@editTimeOff');
Route::post('deleteTimeOff', 'StaffController@deleteTimeOff');
Route::post('editWorkingHours', 'StaffController@editWorkingHours');
Route::post('editBreak', 'StaffController@editBreak');


Route::get('getAllCategories/{SPID}', 'ServiceController@getAllCategories');
Route::post('storeCategory', 'ServiceController@storeCategory');
Route::get('GetServicesByCategory/{catID}', 'ServiceController@GetServicesByCategory');
Route::post('editCategory', 'ServiceController@editCategory');
Route::post('deleteCategory', 'ServiceController@deleteCategory');
Route::post('addService', 'ServiceController@addService');
Route::post('editService', 'ServiceController@editService');
Route::post('deleteService', 'ServiceController@deleteService');
Route::get('GetAllServices/{SPID}', 'ServiceController@GetAllServices');


