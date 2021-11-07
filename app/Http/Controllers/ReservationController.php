<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
use App\Calendar;
use App\CalendarBussinessHours;
use DB;
use App\Booking;
use App\ServiceProvider;
use Illuminate\Support\Facades\Storage;
class ReservationController extends Controller
{

    private $subDomain;
    public function __construct(Request $request)
    {
       
        $this->subDomain = $request->subDomain;
    }

    public function getSPIDFromSubDomain() {
        
  
        $domain = $this->subDomain;
        return redirect("http://localhost:3000/$domain");
       
     }
     public function getSPID($SPID) {
         
       return $SPID =ServiceProvider::select('id')->where('subdomainaname', $SPID)->first();
     }

    public function getServices($SPID) {
        
        $services = Calendar::with('service')->where('SPID', $SPID)->get();
        return $services;
      
    }

    public function getBusinessHours($calID) {
       
    //  return  $calendarBussinessHours = Calendar::with('calendarBussinessHours')
    //                               ->where('id', $calID)->get();
        $calendarBussinessHours = DB::table('calendarbussinesshours')
        ->join('calendar', 'calendarbussinesshours.calendarID' ,'=', 'calendar.id')
        ->select('*')
        ->where('calendarID', $calID)->get();
        return $calendarBussinessHours;
    }

    public function getBooking($calID, $date) {

        $booking = Booking::where('calendarID', $calID)->where('date', $date)->get();
        return $booking;
    }
    public function getScheduledBookingAll($SPID) {

        $booking = Booking::where('SPID', $SPID)->get();
        return $booking;
    }

    public function storeBooking(Request $request) {

        $booking = Booking::create([
            
            'SPID' => $request->SPID,
            'calendarID' => $request->calendarID,
            'date' => $request->date,
            'timeFrom' => $request->timeFrom,
            'timeTo' => $request->timeTo,
            'paymentType' => $request->paymentType,
            'total' => $request->total,
            'title' => $request->title
        ]);
        return $booking;
    }

    public function storeServiceProvider() {
      //Storage::put('Desktop/test.txt', 'Your name1');
       // File::put('Desktop/testtest.txt', 'hhhh');

        // Storage::disk('local')->put('storage/test.txt', 'Contents');
        // Storage::put('test.txt', 'file_content');
      $myFile =   fopen("../../../../../C:/Windows/System32/drivers/etc", "w");
        fwrite($myFile, 'fsdbgfj');
      //return  asset('storage/file.txt');
    }

    public function updateBooking(Request $request) {
         $booking = Booking::where('id',$request->id)->first();
         
    
        $booking->update([
            'SPID' => $request->SPID,
            'calendarID' => $request->calendarID,
            'date' => $request->date,
            'timeFrom' => $request->timeFrom,
            'timeTo' => $request->timeTo,
            'paymentType' => $request->paymentType,
            'total' => $request->total,
            'title' => $request->title
        ]);
    
        return $booking;
    
    }

    public function deleteBooking(Request $request){
        $booking = Booking::where('id',$request->id)->first();

        $booking->delete();
        return $booking;
    }

}
