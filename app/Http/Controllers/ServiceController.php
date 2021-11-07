<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Service;
class ServiceController extends Controller
{
    public function getAllCategories($SPID) {

      $categories = Category::where('SPID', $SPID)->get();
      return  $categories;
    }

    public function storeCategory(Request $request) {
      $category = Category::create([
        'name' => $request->name,
        'SPID' => $request->SPID
    ]);

    return  $category;
    }

    public function GetServicesByCategory($catID) {
      $category = Category::where('id', $catID)->first();
      $services = Service::where('categoryID', $catID)->get();
      return  [$category , $services];
    }

    public function GetAllServices($SPID) {
      $services = Service::where('SPID', $SPID)->get();
      return  $services;
    }
   public function editCategory(Request $request) {

        $category = Category::where('id', $request->id)->update([
          'name' => $request->name
      ]);
      return  Category::where('id', $request->id)->first();
   }

   public function deleteCategory(Request $request) {
    $service = Service::where('categoryID', $request->id)->get();
    foreach($service as $servs) {
      if($servs->img != null) {
        $path = '../imageService/';
        unlink($path.$servs->img);
    }
    $servs->delete();
    }
    
    $category = Category::where('id', $request->id)->first();
    $category->delete();
    return $category;
   }
 

   public function addService(Request $request) {

    $path = '../imageService/';
    $file_name_img = null;
    if($request->img !="undefined")  {
        $file_extion_img = $request->img->getClientOriginalExtension();
        $file_name_img = time().$request->name.'.'.$file_extion_img;
        $request->img->move($path, $file_name_img);
      }
 
    $service = Service::create([
         
      'img' => $file_name_img,
      'name' => $request->name,
      'price' => $request->price,
      'categoryID' => $request->categoryID,
      'description' => $request->description, 
      'serviceTime' =>$request->serviceTime,
      'SPID' => $request->SPID
]);
   
   return $service;
   }

   
   public function editService(Request $request)  {
       
    $path = '../imageService/';
    
    $service = Service::where('id',  $request->id)->first();
     

    if($request->img != "undefined")  {
      if($service->img != null) {
        unlink($path.$staff->img);

    }
            $file_extion_img = $request->img->getClientOriginalExtension();
            $file_name_img = time().$request->name.'.'.$file_extion_img;
            $request->img->move($path, $file_name_img);

            $service = Service::where('id', $request->id)->update([
         
              'img' => $file_name_img,
              'name' => $request->name,
              'price' => $request->price,
              'categoryID' => $request->categoryID,
              'description' => $request->description, 
              'serviceTime' =>$request->serviceTime,
      
         ]);
         return Service::where('id',  $request->id)->first();
        } else {
          $service = Service::where('id', $request->id)->update([
         
           
            'name' => $request->name,
            'price' => $request->price,
            'categoryID' => $request->categoryID,
            'description' => $request->description, 
            'serviceTime' =>$request->serviceTime,
    
       ]);
       return Service::where('id',  $request->id)->first();
        }
 
  }

  public function deleteService(Request $request) {
    $service = Service::where('id', $request->id)->first();
    if($service->img != null) {
        $path = '../imageService/';
        unlink($path.$service->img);
    }
    $service->delete();
    return $service;
   }

}
