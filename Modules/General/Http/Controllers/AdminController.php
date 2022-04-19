<?php

namespace Modules\General\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\str;
use Illuminate\Support\Facades\Validator;
use App\AdminPaymentMethod;

class AdminController extends Controller
{
    //
    public function admin()
    {
        $AdminPaymentMethod = AdminPaymentMethod::all();
        return view('general::Admin.admin', ['AdminPaymentMethod' => $AdminPaymentMethod]);
    }

    public function admin2()
    {
        $AdminPaymentMethod = AdminPaymentMethod::all();
        return view('general::Admin.admin2', ['AdminPaymentMethod' => $AdminPaymentMethod]);
    }

    public function create()
    {
        return view('general::Admin.create');
    }

    public function store(Request $request)
    {
        $AdminPaymentMethod = new AdminPaymentMethod;
        
        $rules = [
            'title' => 'required|max:255',
            'nomor_rekening' => ['required', 'regex:/^[0-9]+$/', 'bail', 'digits_between:1,30'],
            'content' => 'required|max:255'
        ];
        $messages = [
            'title.required' => 'Name is required',
            'title.max' => 'Name must be at most 255 characters',
            'nomor_rekening.required' => 'Phone number is required',
            'nomor_rekening.regex' => 'Phone number must be numeric',
            'nomor_rekening.digits_between' => 'Phone number must be at most 30 characters',
            'content.required' => 'Password is required',
            'content.max' => 'Password must be at most 255 characters',
        ];
        $validator = Validator::make($request->all(), $rules, $messages);        
        if ($validator->fails()) {
            return response()->json(array(
                'success' => false,
                'message' => 'There are incorect values in the form!',
                'errors' => $validator->getMessageBag()->toArray()
            ), 422);
        }

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