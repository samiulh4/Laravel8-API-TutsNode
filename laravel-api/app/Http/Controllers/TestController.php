<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TestController extends Controller
{
    public function sample(){
        return view('sample-view', [
            'name'=> 'Online Web Tutor',
            'email'=> 'sample@mail.com'
        ]);
    }
}
