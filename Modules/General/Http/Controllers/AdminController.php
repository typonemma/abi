<?php

namespace Modules\General\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\str;

class AdminController extends Controller
{
    //
    public function admin()
    {
        return view('general::admin');
    }
}