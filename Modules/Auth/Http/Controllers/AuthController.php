<?php

namespace Modules\Auth\Http\Controllers;

use App\Models\User;
use App\Rules\PasswordCheck;
use App\Rules\PasswordMatch;
use App\Rules\UserExists;
use App\Rules\UserNotExist;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function login()
    {
        if (session('user')) {
            return back();
        }
        return view('auth::login');
    }

    public function doLogin(Request $request)
    {
        $rules = [
            'phone_number' => ['required', 'numeric', 'bail', 'digits_between:1,30', new UserExists],
            'password' => 'required|max:60',
            'temp' => new PasswordCheck
        ];
        $messages = [
            'phone_number.required' => 'Phone number is required',
            'phone_number.numeric' => 'Phone number must be numeric',
            'phone_number.digits' => 'Phone number must be at most 30 characters',
            'password.required' => 'Password is required',
            'password.max' => 'Password must be at most 60 characters'
        ];
        $request->validate($rules, $messages);
        $user = User::where('phone_number', '=', $request->phone_number)->first();
        $request->session()->put('user', $user);
        return redirect('/auth/profile-detail');
    }

    public function register()
    {
        if (session('user')) {
            return back();
        }
        return view('auth::register');
    }

    public function doRegister(Request $request)
    {
        $rules = [
            'name' => 'required|max:60',
            'phone_number' => ['required', 'numeric', 'bail', 'digits_between:1,30', new UserNotExist],
            'password' => 'required|max:60',
            'temp' => new PasswordMatch
        ];
        $messages = [
            'name.required' => 'Name is required',
            'name.max' => 'Name must be at most 60 characters',
            'phone_number.required' => 'Phone number is required',
            'phone_number.numeric' => 'Phone number must be numeric',
            'phone_number.digits' => 'Phone number must be at most 30 characters',
            'password.required' => 'Password is required',
            'password.max' => 'Password must be at most 60 characters',
        ];
        $request->validate($rules, $messages);
        $arr = explode(' ', $request->name);
        $display_name = '';
        foreach ($arr as $x) {
            $display_name = $display_name . ucfirst($x) . ' ';
        }
        User::create([
            'display_name' => $display_name,
            'name' => $request->name,
            'email' => '',
            'phone_number' => $request->phone_number,
            'password' => bcrypt($request->password),
            'user_status' => 1,
            'secret_key' => ''
        ]);
        return redirect('/auth/login');
    }

    public function profile_addresses()
    {
        if (!session('user')) {
            return back();
        }
        return view('auth::profile-addresses');
    }

    public function profile_detail()
    {
        if (!session('user')) {
            return back();
        }
        return view('auth::profile-detail');
    }

    public function saveAccountChanges(Request $request)
    {
        $rules = [
            'first_name' => 'required|max:30',
            'last_name' => 'max:30',
            'email' => 'nullable|email|max:128',
            'new_password' => 'max:60',
            'temp' => new PasswordMatch
        ];
        $messages = [
            'first_name.required' => 'First name is required',
            'first_name.max' => 'First name must be at most 30 characters',
            'email.email' => 'Invalid email',
            'email.max' => 'Email must be at most 128 characters',
            'new_password.max' => 'New password must be at most 60 characters'
        ];
        $request->validate($rules, $messages);
        $display_name = ucfirst($request->first_name) . ' ' . ucfirst($request->last_name);
        $name = $request->first_name . ' ' . $request->last_name;
        $email = $request->email;
        $new_password = $request->new_password;
        $u = session('user');
        $user = User::find($u->id);
        $user->display_name = $display_name;
        $user->name = $name;
        if (trim($email, ' ') != '') {
            $user->email = $email;
        }
        if (trim($new_password, ' ') != '') {
            $user->password = bcrypt($new_password);
        }
        $user->save();
        $request->session()->put('user', $user);
        return redirect('/auth/profile-detail');
    }

    public function profile_history()
    {
        if (!session('user')) {
            return back();
        }
        return view('auth::profile-history');
    }

    public function profile_yourorder()
    {
        if (!session('user')) {
            return back();
        }
        return view('auth::profile-yourorder');
    }

    public function logout()
    {
        session()->forget('user');
        return redirect('/auth/login');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('auth::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('auth::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('auth::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }
}
