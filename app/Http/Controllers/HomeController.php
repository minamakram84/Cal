<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use Auth;
use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    
    // public function __construct( )
    // {
    //     $this->middleware('auth');
       
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
       // $user =User::where('subDomain',$this->subDomain)->first();
        return view('home');
      //return config('app.short_url');
    }
}
