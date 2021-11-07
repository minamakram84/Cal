<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Requests\StaffRequest;
use App\Service;
use App\UserService;
use App\UserBussinessHours;
use App\TimeOff;
use DB;
use App\StaffBreak;


 
class StaffController extends Controller
{
    public function getAllStaff($SPID) {
        $staff = User::select('id', 'name')->where('SPID', $SPID)->get();
        return $staff;
    }

    public function storeStaff(StaffRequest $request) {

        $createstaff = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'SPID' => $request->SPID
        ]);

        for($i =1; $i<=7; $i++) {
            $staffWorkingHours = UserBussinessHours::create([
                'day' => $i,
                'SPID' => $request->SPID,
                'userID' => $createstaff->id,
                'dayActive' => 1
            ]);

            $stafBreak = StaffBreak::create([
                'day' => $i,
                'SPID' => $request->SPID,
                'userID' => $createstaff->id,
                'dayActive' => 1
            ]);

        }
        return  $createstaff;
    }

    public function getStaff($StaffID, $SPID) {

        $staff = User::where('id',$StaffID)->first();
        $stffServiceCount = UserService::where('staffID', $StaffID)->count();
        
 
        $stffServices = DB::select('
        SELECT services.* , t.* from
        services left join 
        (select * from userservices where staffID = ?) as t
        on serviceID = id
        where services.SPID =?;
        ',[ $StaffID,$SPID]);


        $staffWorkHours = UserBussinessHours::with(['day', 'userBussinessHours' => function($q)use($StaffID){
            $q->where('userBussinessHours.userID', $StaffID);
        }])->where('userID', $StaffID)->where('SPID', $SPID)->get();
        
        // $staffBreak = DB::table('userbreak')
        // ->rightJoin('days', 'days.id', '=','userbreak.day')
        // ->select('days.name','userbreak.*')
        // ->get();

          $staffBreak = StaffBreak::with(['day', 'userBussinessHours' => function($q)use($StaffID){
            $q->where('userBussinessHours.userID', $StaffID);
        }])->where('userID', $StaffID)->where('SPID', $SPID)->get();

         $staffTimeOff = TimeOff::where('userID', $StaffID)->where('SPID', $SPID)->get();
        return [$staff, $stffServiceCount, $stffServices, $staffWorkHours, $staffTimeOff, $staffBreak]  ;
       
    }

    public function editStaff(Request $request)  {
       
        $path = '../imageStaff/';
        $staff = User::where('id',  $request->id)->first();
        if($request->img)  {
            if($staff->img != null) {
                unlink($path.$staff->img);

            }

           $file_extion_img = $request->img->getClientOriginalExtension();
           $file_name_img = time().$request->name.'.'.$file_extion_img;
           $request->img->move($path, $file_name_img);
   
           $staff = User::where('id', $request->id)->update([
             
               'img' => $file_name_img,
               'name' => $request->name,
               'email' => $request->email,
               'mobile' => $request->mobile,
               'description' => $request->description, 
               'active' =>$request->active


       ]);
       return User::where('id',  $request->id)->first();
       }
        
       $staff = User::where('id', $request->id)->update([
             
        
        'name' => $request->name,
        'email' => $request->email,
        'mobile' => $request->mobile,
        'description' => $request->description,
        'active' =>$request->active


    ]);
   
            return User::where('id',  $request->id)->first();
   
       }

    public function deleteStaffService($StaffID, $serviceID) {
    $staffService =   UserService::where('staffID' , $StaffID)->where('serviceID', $serviceID)->delete();
   
    return $staffService;
    }

   public function storeStaffService($StaffID, $serviceID) {
    $staffService =   UserService::create([
        'staffID' => $StaffID, 
        'serviceID' => $serviceID
    ]);

    

    return $staffService;
}

// public function getWorkHours() {
//     $staffWorkHours = DB::table('userbussinesshours')
//     ->rightJoin('days', 'days.id', '=','userbussinesshours.day')
//     ->select('days.name','userbussinesshours.*')
//     ->get();

//     return $staffWorkHours;
// }

public function deleteStaff(Request $request) {
    $staffWorkingHours =   UserBussinessHours::where('userID' , $request->id)->delete();
    $staffbreaks =   StaffBreak::where('userID' , $request->id)->delete();
    $Staff = User::where('id', $request->id)->first();
    if($Staff->img != null) {
        $path = '../imageStaff/';
        unlink($path.$Staff->img);
    }
    $Staff->delete();
    return $Staff;
   }

    public function storeTimeOff(Request $request) {
        
        $timeOff = TimeOff::create([
            'toDate' => $request->toDate,
            'fromDate' => $request->fromDate,
            'description' => $request->description,
            'userID' => $request->userID,
            'SPID' => $request->SPID
        ]);
        return  $timeOff;
    }

    public function editTimeOff(Request $request) {
        $timeOff = TimeOff::where('id', $request->id)->update([
             
            'toDate' => $request->toDate,
            'fromDate' => $request->fromDate,
            'description' => $request->description


    ]);
    return TimeOff::where('id', $request->id)->first();
    }

    
public function deleteTimeOff(Request $request) {
    $timeOff = TimeOff::where('id', $request->id)->first();
  
    $timeOff->delete();
    return $timeOff;
   }

   public function editWorkingHours(Request $request) {

    for($i =0; $i<=6; $i++) {
        $workingHours = UserBussinessHours::where('id', $request[$i]['id'])->update([
             
                    'timeFrom' => $request[$i]['timeFrom'],
                    'timeTo' => $request[$i]['timeTo'],
            ]);
          
    }
    return 'success';
   }

   public function editBreak(Request $request) {

    for($i =0; $i<=6; $i++) {
        $myBreak = StaffBreak::where('id', $request[$i]['id'])->update([
             
                    'timeFrom' => $request[$i]['timeFrom'],
                    'timeTo' => $request[$i]['timeTo'],
            ]);
          
    }
    return 'success';
   }
   


}
