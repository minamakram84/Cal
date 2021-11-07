<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;

class profileController extends Controller
{
    private $subDomain;
    public function __construct(Request $request)
    {
       
        $this->subDomain = $request->subDomain;
    }

    public function show() {
       // return Auth::user()->subDomain;
          $user =User::where('subDomain', $this->subDomain)->first();
        return view('profile.show', compact('user'));
    }

    
}
