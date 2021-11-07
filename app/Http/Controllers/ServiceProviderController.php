<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ServiceProvider;
use App\Industry;
use App\Country;
use App\State;
use App\BussinessHours;
use App\UserBussinessHours;
use App\StaffBreak;
class ServiceProviderController extends Controller
{
   
    public function getServiceProvider($SPID) {

        $serviceProvider = ServiceProvider::with(['country', 'state', 'industry'])->where('id', $SPID)->first();
        $industry = Industry::all();
        $country = Country::all();
        $bussinessHours = BussinessHours::where('SPID', $SPID)->get();
        return [$serviceProvider,  $industry, $country, $bussinessHours];
    }

    public function getState($contryID) {
        $state = State::select('id', 'name')->where('contryID', $contryID)->get();
        return $state;
    }

    public function editServiceProvider(Request $request)  {
       
     $path = '../imageServiceProvider/';
     $getserviceProvider = ServiceProvider::with(['country', 'state', 'industry'])->where('id',  $request->id)->first();
     if($request->img != "[object Object]")  {
         unlink($path.$getserviceProvider->img);
        $file_extion_img = $request->img->getClientOriginalExtension();
        $file_name_img = time().$request->subdomainaname.'.'.$file_extion_img;
        $request->img->move($path, $file_name_img);

        $serviceProvider = ServiceProvider::where('id', $request->id)->update([
          
            'img' => $file_name_img,
            'name' => $request->name,
            'subdomainaname' => $request->subdomainaname,
            'website' => $request->website,
            'mobile' => $request->mobile,
            
            'contryID' => $request->contryID,
            'stateID' => $request->stateID,
            'city' => $request->city,
            'address' => $request->address,
            'zipCode' => $request->zipCode,
            'industryID' => $request->industryID,
            'aboutYou' => $request->aboutYou,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,

            'email' => $request->email,
            'minTimeBefourBokkingInMints' => $request->minTimeBefourBokkingInMints,
            'maxTimeBefourBokkingIndays' => $request->maxTimeBefourBokkingIndays,
            'timeZone' => $request->timeZone,
            'location' => $request->location,
            
            
     
    ]);
    return  ServiceProvider::with(['country', 'state', 'industry'])->where('id', $request->id)->first();;
    }
     
      $serviceProvider = ServiceProvider::where('id', $request->id)->update([
          
            'name' => $request->name,
            'subdomainaname' => $request->subdomainaname,
            'website' => $request->website,
            'mobile' => $request->mobile,
            
            'contryID' => $request->contryID,
            'stateID' => $request->stateID,
            'city' => $request->city,
            'address' => $request->address,
            'zipCode' => $request->zipCode,
            'industryID' => $request->industryID,
            'aboutYou' => $request->aboutYou,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,

            'email' => $request->email,
            'minTimeBefourBokkingInMints' => $request->minTimeBefourBokkingInMints,
            'maxTimeBefourBokkingIndays' => $request->maxTimeBefourBokkingIndays,
            'timeZone' => $request->timeZone,
            'location' => $request->location,
     
    ]);

    return  ServiceProvider::with(['country', 'state', 'industry'])->where('id', $request->id)->first();;
      

    }

  
        public function editBussinessHours(Request $request) {

            for($i =0; $i<=6; $i++) {
                $bussinessHours = BussinessHours::where('id', $request[$i]['id'])->update([
                     
                            'fromHour' => $request[$i]['fromHour'],
                            'toHour' => $request[$i]['toHour'],
                            'dayActive' => $request[$i]['dayActive'],
                    ]);
                  $tt =  BussinessHours::where('id', $request[$i]['id'])->first();
                  if($tt->dayActive == 0) {
                  UserBussinessHours::where('SPID', $tt->SPID)->where('day', $tt->dayID)->update([
                      'dayActive' => $tt->dayActive,
                      'timeFrom' => null,
                      'timeTo' => null,
                  ]);
                  StaffBreak::where('SPID' ,  $tt->SPID)->where('day' ,$tt->dayID)->update([
                    'timeFrom' => null,
                    'timeTo' => null,
                    ]);
                } 
                  if($tt->dayActive == 1) {
                    UserBussinessHours::where('SPID', $tt->SPID)->where('day', $tt->dayID)->update([
                        'dayActive' => $tt->dayActive,
                       
                    ]);
                  }
                 
            }
            return 'success';
           }
 
}
