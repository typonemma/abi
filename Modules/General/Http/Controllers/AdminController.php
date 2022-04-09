<?php

namespace Modules\General\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\str;
use App\AdminPaymentMethod;

class AdminController extends Controller
{
    //
    public function admin()
    {
        $AdminPaymentMethod = AdminPaymentMethod::all();
        return view('general::Admin.admin', ['AdminPaymentMethod' => $AdminPaymentMethod]);
    }

    public function create()
    {
        return view('general::Admin.create');
    }

    public function store(Request $request)
    {
        $AdminPaymentMethod = new AdminPaymentMethod;
        $AdminPaymentMethod::create($request->except(['_token','submit']));

        return redirect('/admin');
    }

    public function edit($id)
    {
        $AdminPaymentMethod = new AdminPaymentMethod;
        $AdminPaymentMethod = AdminPaymentMethod::find($id);

        return view('general::Admin.update', ['AdminPaymentMethod' => $AdminPaymentMethod]);
    }

    public function update($id, Request $request)
    {
        $AdminPaymentMethod = new AdminPaymentMethod;
        $AdminPaymentMethod = AdminPaymentMethod::find($id);
        $AdminPaymentMethod->update($request->except(['_token','submit']));

        return redirect('/admin');
    }

    public function destroy($id)
    {
        $AdminPaymentMethod = new AdminPaymentMethod;
        $AdminPaymentMethod = AdminPaymentMethod::find($id);
        $AdminPaymentMethod->delete();

        return redirect('/admin');
    }
}