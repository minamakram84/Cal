<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use App\Http\Requests\CustomerRequest;
class CustomerController extends Controller
{
    public function getAllCustomers($SPID) {

        $customers = Customer::select('id', 'name')->where('SPID', $SPID)->get();
        return $customers;
    }

    public function storeCustomer(CustomerRequest $request) {

        $customer = Customer::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'SPID' => $request->SPID
        ]);
        return  $customer;
    }

    public function getCustomer($customerID) {
        $customer = Customer::where('id',$customerID)->first();
        return $customer;
    }

    public function editCustomer(CustomerRequest $request)  {
       
        $path = '../imageCustomers/';
        $customer = Customer::where('id',  $request->id)->first();
        if($request->img)  {
            if($customer->img != null) {
                unlink($path.$customer->img);

            }

           $file_extion_img = $request->img->getClientOriginalExtension();
           $file_name_img = time().$request->name.'.'.$file_extion_img;
           $request->img->move($path, $file_name_img);
   
           $customer = Customer::where('id', $request->id)->update([
             
               'img' => $file_name_img,
               'name' => $request->name,
               'email' => $request->email,
               'phone' => $request->phone,
               'address' => $request->address,
               'bDate' => $request->bDate,
               'homePhone' => $request->homePhone,
               'officePhone' => $request->officePhone,
               'info' => $request->info,
        'description' => $request->description


       ]);
       return Customer::where('id', $request->id)->first();
       }
        
       $customer = Customer::where('id', $request->id)->update([
             
        
        'name' => $request->name,
        'email' => $request->email,
        'phone' => $request->phone,
        'address' => $request->address,
        'bDate' => $request->bDate,
        'homePhone' => $request->homePhone,
        'officePhone' => $request->officePhone,
        'info' => $request->info,
        'description' => $request->description

    ]);
   
            return Customer::where('id', $request->id)->first();
         
   
       }

       public function deleteCustomer(Request $request) {
        $customer = Customer::where('id', $request->id)->first();
        if($customer->img != null) {
            $path = '../imageCustomers/';
            unlink($path.$customer->img);
        }
        $customer->delete();
        return $customer;
       }
}
